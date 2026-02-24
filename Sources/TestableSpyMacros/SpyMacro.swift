import SwiftSyntax
import SwiftSyntaxMacros

/// The @Spy macro cascades @AddSpy to every qualifying method in the annotated type.
///
/// Qualifying methods are `FunctionDeclSyntax` members that do not already have `@AddSpy`.
/// Non-function members (init, deinit, subscript, var, let) are skipped.
public struct SpyMacro: MemberAttributeMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingAttributesFor member: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [AttributeSyntax] {
        guard member.is(FunctionDeclSyntax.self) else {
            return []
        }
        let funcDecl = member.as(FunctionDeclSyntax.self)!
        let alreadyHasAddSpy = funcDecl.attributes.contains {
            guard case .attribute(let attr) = $0,
                let id = attr.attributeName.as(IdentifierTypeSyntax.self)
            else { return false }
            return id.name.text == "AddSpy"
        }
        guard !alreadyHasAddSpy else { return [] }
        return ["@AddSpy"]
    }
}
