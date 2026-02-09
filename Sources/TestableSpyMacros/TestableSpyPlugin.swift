import SwiftCompilerPlugin
import SwiftSyntaxMacros

/// Compiler plugin that provides the TestableSpy macros.
///
/// This plugin registers both:
/// - @AddSpy: For transforming individual method bodies
/// - @Spyable: For generating spy infrastructure at the class level
@main
struct TestableSpyPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        AddSpyMacro.self
    ]
}
