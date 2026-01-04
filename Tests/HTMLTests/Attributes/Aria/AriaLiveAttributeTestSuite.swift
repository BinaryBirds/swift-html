import SGML
import Testing

@testable import HTML

@Suite
struct AriaLiveAttributeTestSuite {

    @Test
    func rendersAriaLiveValues() async throws {
        let cases: [(AriaLiveAttributeValue, String)] = [
            (.assertive, "assertive"),
            (.off, "off"),
            (.polite, "polite"),
        ]

        for (value, raw) in cases {
            let tag = Div {}
                .ariaLive(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <div aria-live="\#(raw)"></div>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
