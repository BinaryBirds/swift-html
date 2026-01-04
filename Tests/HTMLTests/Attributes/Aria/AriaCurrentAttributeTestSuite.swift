import SGML
import Testing

@testable import HTML

@Suite
struct AriaCurrentAttributeTestSuite {

    @Test
    func rendersAriaCurrentValues() async throws {
        let cases: [(AriaCurrentAttributeValue, String)] = [
            (.page, "page"),
            (.step, "step"),
            (.location, "location"),
            (.date, "date"),
            (.time, "time"),
            (.true, "true"),
            (.false, "false"),
        ]

        for (value, raw) in cases {
            let tag = A("current")
                .ariaCurrent(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <a aria-current="\#(raw)">current</a>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
