/// Errors that can occur during macro expansion.
enum MacroError: Error, CustomStringConvertible {
    case notAFunction
    case noBody

    var description: String {
        switch self {
        case .notAFunction:
            return "@AddSpy can only be applied to functions"
        case .noBody:
            return "Function must have a body"
        }
    }
}
