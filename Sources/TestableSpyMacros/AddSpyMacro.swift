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
        let clientBody = extractClientBody(from: funcDecl)

        var statements: [CodeBlockItemSyntax] = []

        // Add spy check and call
        statements.append(buildSpyCheck(
            spyName: spyName,
            paramTuple: paramTuple,
            signature: signature
        ))

        // Add client body with proper return handling
        statements.append(contentsOf: processClientBody(clientBody, signature: signature))

        return statements
    }

    // MARK: - Private Helpers for Body Generation

    /// Extracts the existing client body statements from the function.
    private static func extractClientBody(from funcDecl: FunctionDeclSyntax) -> [CodeBlockItemSyntax] {
        guard let existingBody = funcDecl.body?.statements else {
            return []
        }
        return Array(existingBody)
    }

    /// Builds the spy execution call based on the function signature.
    private static func buildSpyCall(
        spyName: String,
        paramTuple: String,
        signature: MacroUtilities.FunctionSignature
    ) -> String {
        let executeCall = "\(spyName).execute(parameters: \(paramTuple))"
        let awaitCall = "await \(executeCall)"
        let throwingCall = signature.isThrowing ? "try \(awaitCall).get()" : awaitCall

        return throwingCall
    }

    /// Generates the conditional spy check statement.
    private static func buildSpyCheck(
        spyName: String,
        paramTuple: String,
        signature: MacroUtilities.FunctionSignature
    ) -> CodeBlockItemSyntax {
        let spyCall = buildSpyCall(spyName: spyName, paramTuple: paramTuple, signature: signature)
        let condition = "\(spyName).hasBody || \(spyName).return != nil"

        if signature.hasReturnValue {
            return """
                if \(raw: condition) {
                    return \(raw: spyCall)
                }
                """ as CodeBlockItemSyntax
        } else {
            return """
                if \(raw: condition) {
                    \(raw: spyCall)
                    return
                }
                """ as CodeBlockItemSyntax
        }
    }

    /// Processes client body statements, adding explicit returns if needed.
    private static func processClientBody(
        _ clientBody: [CodeBlockItemSyntax],
        signature: MacroUtilities.FunctionSignature
    ) -> [CodeBlockItemSyntax] {
        guard !clientBody.isEmpty else {
            return []
        }

        guard signature.hasReturnValue else {
            return clientBody
        }

        return addExplicitReturnIfNeeded(to: clientBody)
    }

    /// Adds explicit return to the last statement if it's an implicit return.
    private static func addExplicitReturnIfNeeded(
        to clientBody: [CodeBlockItemSyntax]
    ) -> [CodeBlockItemSyntax] {
        guard let lastStmt = clientBody.last else {
            return clientBody
        }

        // Already has explicit return
        if lastStmt.item.is(ReturnStmtSyntax.self) {
            return clientBody
        }

        // Single expression - convert to return statement
        if clientBody.count == 1, let expr = lastStmt.item.as(ExprSyntax.self) {
            return ["return \(expr)" as CodeBlockItemSyntax]
        }

        // Multiple statements - add return to last expression
        var statements = Array(clientBody.dropLast())
        if let lastExpr = lastStmt.item.as(ExprSyntax.self) {
            statements.append("return \(lastExpr)" as CodeBlockItemSyntax)
        } else {
            statements.append(lastStmt)
        }
        return statements
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

        // Generate the SpyWrapper property as a peer to this method
        let spyName = MacroUtilities.extractSpyName(from: node, function: funcDecl)
        let parameterType = MacroUtilities.buildParameterType(from: funcDecl)
        let returnType = MacroUtilities.buildReturnType(from: funcDecl)

        return [
            "let \(raw: spyName): SpyWrapper<\(raw: parameterType), \(raw: returnType)> = .init()" as DeclSyntax
        ]
    }

}
