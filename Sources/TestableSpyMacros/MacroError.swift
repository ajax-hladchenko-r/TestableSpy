/// Errors that can occur during macro expansion.
enum MacroError: Error, CustomStringConvertible {
    case notAFunction
    case noBody
    case genericMethodsNotSupported
    case inoutParametersNotSupported
    case duplicateSpyName(String)

    var description: String {
        switch self {
        case .notAFunction:
            return "@AddSpy can only be applied to functions"
        case .noBody:
            return "Function must have a body"
        case .genericMethodsNotSupported:
            return "@AddSpy cannot be applied to generic methods. Method-level type parameters cannot be represented at property scope in the generated SpyWrapper."
        case .inoutParametersNotSupported:
            return "@AddSpy cannot be applied to methods with 'inout' parameters. inout values cannot be stored in SpyWrapper's parameters property."
        case .duplicateSpyName(let name):
            return "Duplicate spy name '\(name)'. Multiple @AddSpy annotations resolve to the same property name. Use @AddSpy(\"uniqueName\") to disambiguate."
        }
    }
}
