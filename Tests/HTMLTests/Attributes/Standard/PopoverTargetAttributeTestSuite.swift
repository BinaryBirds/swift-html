import SGML
import Testing

@testable import HTML

@Suite
struct PopoverTargetAttributeTestSuite {

    @Test
    func rendersPopoverTargetValue() async throws {
        let tag = Button {}
            .popoverTarget("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button popovertarget="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
