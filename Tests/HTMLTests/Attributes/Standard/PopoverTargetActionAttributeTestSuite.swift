import SGML
import Testing

@testable import HTML

@Suite
struct PopoverTargetActionAttributeTestSuite {

    @Test
    func rendersPopoverTargetActionValues() async throws {
        let cases: [(PopoverTargetActionAttributeValue, String)] = [
            (.toggle, "toggle"),
            (.show, "show"),
            (.hide, "hide"),
        ]

        for (value, raw) in cases {
            let tag = Button("toggle")
                .popoverTargetAction(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <button popovertargetaction="\#(raw)">toggle</button>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
