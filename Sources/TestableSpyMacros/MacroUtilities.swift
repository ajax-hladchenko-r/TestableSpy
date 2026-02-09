import SwiftSyntax
import SwiftSyntaxBuilder

/// Shared utilities for extracting information from function declarations
/// and building type/parameter representations for spy generation.
enum MacroUtilities {

    // MARK: - Spy Name Extraction

    /// Extracts the spy name from an @AddSpy attribute, falling back to the function name.
    ///
    /// - Parameters:
    ///   - attribute: The @AddSpy attribute syntax node
    ///   - function: The function declaration
    /// - Returns: The name to use for the spy property
    static func extractSpyName(
        from attribute: AttributeSyntax,
        function: FunctionDeclSyntax
    ) -> String {
        // Try to extract string argument from @AddSpy("customName")
        if let customName = extractStringArgument(from: attribute) {
            return customName
        }

        // Default to function name
        return function.name.text
    }

    /// Extracts the spy name by scanning a function's attributes.
    ///
    /// - Parameter function: The function declaration with @AddSpy attribute
    /// - Returns: The spy name from the attribute or function name
    static func extractSpyName(from function: FunctionDeclSyntax) -> String {
        // Find the @AddSpy attribute
        for attribute in function.attributes {
            guard let attr = attribute.as(AttributeSyntax.self),
                let identifier = attr.attributeName.as(IdentifierTypeSyntax.self),
                identifier.name.text == "AddSpy"
            else {
                continue
            }

            // Try to get custom name from attribute argument
            if let customName = extractStringArgument(from: attr) {
                return customName
            }
        }

        // Default to function name
        return function.name.text
    }

    // MARK: - Parameter Type Building

    /// Builds a Swift type representation for the function's parameters.
    ///
    /// Examples:
    /// - No parameters: "Void"
    /// - Single parameter: "Int"
    /// - Multiple parameters: "(Int, String, Double)"
    ///
    /// - Parameter function: The function declaration
    /// - Returns: String representation of the parameter type
    static func buildParameterType(from function: FunctionDeclSyntax) -> String {
        let parameters = function.signature.parameterClause.parameters

        // No parameters = Void
        guard !parameters.isEmpty else {
            return "Void"
        }

        // Single parameter = just the type
        if parameters.count == 1,
            let singleParam = parameters.first
        {
            return singleParam.type.trimmed.description
        }

        // Multiple parameters = tuple of types
        let types = parameters.map { $0.type.trimmed.description }
        return "(\(types.joined(separator: ", ")))"
    }

    // MARK: - Return Type Building

    /// Builds a Swift type representation for the function's return type.
    ///
    /// For throwing functions, wraps the return type in Result<T, Error>.
    /// For non-throwing functions, returns the type as-is or Void.
    ///
    /// Examples:
    /// - `func foo() -> String`: "String"
    /// - `func foo() throws -> String`: "Result<String, any Error>"
    /// - `func foo() async throws`: "Result<Void, any Error>"
    /// - `func foo() async`: "Void"
    ///
    /// - Parameter function: The function declaration
    /// - Returns: String representation of the return type
    static func buildReturnType(from function: FunctionDeclSyntax) -> String {
        let throwsClause = function.signature.effectSpecifiers?.throwsClause
        let isThrowing = throwsClause != nil

        if let returnClause = function.signature.returnClause {
            // Function has explicit return type
            let returnType = returnClause.type.trimmed.description

            if isThrowing {
                return "Result<\(returnType), any Error>"
            } else {
                return returnType
            }
        } else {
            // No return type specified = returns Void
            if isThrowing {
                return "Result<Void, any Error>"
            } else {
                return "Void"
            }
        }
    }

    // MARK: - Parameter Tuple Building

    /// Builds a parameter tuple string for calling spy.execute().
    ///
    /// Examples:
    /// - No parameters: "()"
    /// - Single parameter named `value`: "value"
    /// - Multiple parameters: "(first, second, third)"
    ///
    /// - Parameter function: The function declaration
    /// - Returns: String representing the parameter tuple for the spy call
    static func buildParameterTuple(from function: FunctionDeclSyntax) -> String {
        let parameters = function.signature.parameterClause.parameters

        // No parameters = empty tuple
        guard !parameters.isEmpty else {
            return "()"
        }

        // Single parameter = just the parameter name (no tuple)
        if parameters.count == 1,
            let paramName = extractParameterName(from: parameters.first!)
        {
            return paramName
        }

        // Multiple parameters = tuple of names
        let names = parameters.compactMap { extractParameterName(from: $0) }
        return "(\(names.joined(separator: ", ")))"
    }

    // MARK: - Function Signature Analysis

    /// Analyzes a function's signature to determine its characteristics.
    struct FunctionSignature {
        let isThrowing: Bool
        let hasReturnValue: Bool

        init(from function: FunctionDeclSyntax) {
            self.isThrowing = function.signature.effectSpecifiers?.throwsClause != nil
            self.hasReturnValue = function.signature.returnClause != nil
        }
    }

    // MARK: - Private Helpers

    /// Extracts the string literal argument from a macro attribute.
    private static func extractStringArgument(from attribute: AttributeSyntax) -> String? {
        guard let arguments = attribute.arguments,
            case let .argumentList(list) = arguments,
            let firstArg = list.first,
            let stringLiteral = firstArg.expression.as(StringLiteralExprSyntax.self),
            let segment = stringLiteral.segments.first,
            case let .stringSegment(content) = segment
        else {
            return nil
        }

        return content.content.text
    }

    /// Extracts the parameter name (internal name) from a function parameter.
    private static func extractParameterName(from parameter: FunctionParameterSyntax) -> String? {
        // Use internal name (secondName) if available, otherwise use external name
        if let internalName = parameter.secondName {
            return internalName.text
        }
        return parameter.firstName.text
    }
}
