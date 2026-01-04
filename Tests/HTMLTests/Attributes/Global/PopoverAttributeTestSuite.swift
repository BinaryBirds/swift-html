import SGML
import Testing

@testable import HTML

@Suite
struct PopoverAttributeTestSuite {

    @Test
    func rendersPopoverValues() async throws {
        let cases: [(PopoverAttributeValue, String)] = [
            (.auto, "auto"),
            (.manual, "manual"),
            (.hint, "hint"),
        ]

        for (value, raw) in cases {
            let tag = Div {}
                .popover(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <div popover="\#(raw)"></div>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
