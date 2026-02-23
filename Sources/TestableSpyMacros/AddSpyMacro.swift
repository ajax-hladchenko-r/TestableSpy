import SwiftSyntax
import SwiftSyntaxMacros

/// The @AddSpy macro generates method bodies that delegate to spy wrappers
/// and generates spy properties as peers.
public struct AddSpyMacro: BodyMacro, PeerMacro {

    // MARK: - BodyMacro Implementation

    public static func expansion(
        of node: AttributeSyntax,
        providingBodyFor declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [CodeBlockItemSyntax] {
        guard let funcDecl = declaration.as(FunctionDeclSyntax.self) else {
            throw MacroError.notAFunction
        }

        let spyName = MacroUtilities.extractSpyName(from: node, function: funcDecl)
        let signature = MacroUtilities.FunctionSignature(from: funcDecl)
        let paramTuple = MacroUtilities.buildParameterTuple(from: funcDecl)

        let executeTry: String =
            switch (signature.isAsync, signature.isThrowing) {
            case (true, true): "try await"
            case (true, false): "await"
            case (false, true): "try"
            case (false, false): ""
            }

        let executeCall: String = {
            let call = "\(spyName).execute(parameters: \(paramTuple))"
            return executeTry.isEmpty ? call : "\(executeTry) \(call)"
        }()

        let originalStatements = extractClientBody(from: funcDecl)
        let processedBody = processOriginalBody(originalStatements, hasReturnValue: signature.hasReturnValue)

        let closureStatements: [String]
        if originalStatements.isEmpty {
            closureStatements = ["return ()"]
        } else {
            closureStatements = processedBody.map { $0.trimmed.description }
        }

        let params = funcDecl.signature.parameterClause.parameters
        let pattern = buildClosurePattern(from: params)
        let bodyLines =
            closureStatements
            .map { "        " + $0 }
            .joined(separator: "\n")

        let elseBody: String
        if pattern.isEmpty {
            elseBody = "\(spyName).body {\n\(bodyLines)\n    }"
        } else {
            elseBody = "\(spyName).body { \(pattern)\n\(bodyLines)\n    }"
        }

        let ifElseBlock: CodeBlockItemSyntax = """
            if \(raw: spyName).isOverridden {
                return \(raw: executeCall)
            } else {
                \(raw: elseBody)
                return \(raw: executeCall)
            }
            """

        return [ifElseBlock]
    }

    // MARK: - Private Helpers

    private static func buildClosurePattern(from parameters: FunctionParameterListSyntax) -> String {
        if parameters.isEmpty { return "" }
        if parameters.count == 1,
            let name = MacroUtilities.extractParameterName(from: parameters.first!)
        {
            return "\(name) in"
        }
        let names = parameters.compactMap { MacroUtilities.extractParameterName(from: $0) }
        return "(\(names.joined(separator: ", "))) in"
    }

    private static func extractClientBody(from funcDecl: FunctionDeclSyntax) -> [CodeBlockItemSyntax] {
        guard let existingBody = funcDecl.body?.statements else {
            return []
        }
        return Array(existingBody)
    }

    /// Converts original body statements for appending after the if-else block.
    /// Adds explicit `return` to the last expression if the function has a return value.
    private static func processOriginalBody(
        _ statements: [CodeBlockItemSyntax],
        hasReturnValue: Bool
    ) -> [CodeBlockItemSyntax] {
        guard !statements.isEmpty else { return [] }
        var result = statements
        if hasReturnValue,
            let last = result.last,
            !last.item.is(ReturnStmtSyntax.self),
            let expr = last.item.as(ExprSyntax.self)
        {
            result[result.count - 1] = "return \(expr.trimmed)" as CodeBlockItemSyntax
        }
        return result
    }

    // MARK: - PeerMacro Implementation

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let funcDecl = declaration.as(FunctionDeclSyntax.self) else {
            return []
        }

        let spyName = MacroUtilities.extractSpyName(from: node, function: funcDecl)
        let parameterType = MacroUtilities.buildParameterType(from: funcDecl)
        let returnType = MacroUtilities.buildReturnType(from: funcDecl)
        let failureType = MacroUtilities.buildFailureType(from: funcDecl)

        let accessModifier = MacroUtilities.buildAccessModifier(from: funcDecl)

        let typeParams = "\(parameterType), \(returnType), \(failureType)"
        let spyDecl: DeclSyntax =
            "\(raw: accessModifier)let \(raw: spyName): SpyWrapper<\(raw: typeParams)> = .init()"
        return [spyDecl]
    }

}
