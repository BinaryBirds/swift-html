import SGML
import Testing

@testable import HTML

@Suite
struct AriaKeyShortcutsAttributeTestSuite {

    @Test
    func rendersAriaKeyShortcutsValue() async throws {
        let tag = A {}
            .ariaKeyShortcuts("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-keyshortcuts="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
