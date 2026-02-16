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

        let executeTry = signature.isThrowing ? "try await" : "await"

        let ifElseBlock: CodeBlockItemSyntax = """
            if \(raw: spyName).isOverridden {
                return \(raw: executeTry) \(raw: spyName).execute(parameters: \(raw: paramTuple))
            } else {
                \(raw: executeTry) \(raw: spyName).execute(parameters: \(raw: paramTuple))
            }
            """

        let originalBody = processOriginalBody(
            extractClientBody(from: funcDecl),
            hasReturnValue: signature.hasReturnValue
        )

        return [ifElseBlock] + originalBody
    }

    // MARK: - Private Helpers

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

        return [
            ("\(raw: accessModifier)let \(raw: spyName): SpyWrapper<\(raw: parameterType), \(raw: returnType), \(raw: failureType)> = .init()"
                as DeclSyntax)
                .with(\.trailingTrivia, .newlines(2))
        ]
    }

}
