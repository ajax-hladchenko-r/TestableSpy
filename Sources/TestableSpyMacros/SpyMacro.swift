import SwiftSyntax
import SwiftSyntaxMacros

/// The @Spy macro cascades @AddSpy to every qualifying method in the annotated type.
///
/// Qualifying methods are `FunctionDeclSyntax` members that:
/// - Are not `static`
/// - Do not already have `@AddSpy`
/// - Do not share a base name with another qualifying method (overloads)
///
/// Non-function members (init, deinit, subscript, var, let) are skipped.
public struct SpyMacro: MemberAttributeMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingAttributesFor member: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [AttributeSyntax] {
        guard let funcDecl = member.as(FunctionDeclSyntax.self) else { return [] }

        // Skip static methods — @AddSpy PeerMacro generates an instance-level `let` property.
        guard !funcDecl.modifiers.contains(where: { $0.name.tokenKind == .keyword(.static) })
        else { return [] }

        // Skip methods already manually annotated with @AddSpy.
        guard !hasAddSpyAttribute(funcDecl) else { return [] }

        // Detect overloaded methods: if 2+ qualifying functions share this name, emit error.
        // "Qualifying" = FunctionDeclSyntax members that are not static and not already @AddSpy.
        let qualifyingFunctions = declaration.memberBlock.members
            .compactMap { $0.decl.as(FunctionDeclSyntax.self) }
            .filter {
                !$0.modifiers.contains(where: { $0.name.tokenKind == .keyword(.static) })
                    && !hasAddSpyAttribute($0)
            }
        let name = funcDecl.name.text
        if qualifyingFunctions.filter({ $0.name.text == name }).count > 1 {
            throw MacroError.spyAmbiguousMethodName(name)
        }

        return ["@AddSpy"]
    }

    private static func hasAddSpyAttribute(_ funcDecl: FunctionDeclSyntax) -> Bool {
        funcDecl.attributes.contains {
            guard case .attribute(let attr) = $0,
                let id = attr.attributeName.as(IdentifierTypeSyntax.self)
            else { return false }
            return id.name.text == "AddSpy"
        }
    }
}
