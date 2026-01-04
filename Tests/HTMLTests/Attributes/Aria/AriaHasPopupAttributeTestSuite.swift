import SGML
import Testing

@testable import HTML

@Suite
struct AriaHasPopupAttributeTestSuite {

    @Test
    func rendersAriaHasPopupValues() async throws {
        let cases: [(AriaHasPopupAttributeValue, String)] = [
            (.false, "false"),
            (.true, "true"),
            (.menu, "menu"),
            (.listbox, "listbox"),
            (.tree, "tree"),
            (.grid, "grid"),
            (.dialog, "dialog"),
        ]

        for (value, raw) in cases {
            let tag = Button("open")
                .ariaHasPopup(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <button aria-haspopup="\#(raw)">open</button>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
