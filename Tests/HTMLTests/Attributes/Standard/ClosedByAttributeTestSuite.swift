import SGML
import Testing

@testable import HTML

@Suite
struct ClosedByAttributeTestSuite {

    @Test
    func rendersClosedByValues() async throws {
        let cases: [(ClosedByAttributeValue, String)] = [
            (.any, "any"),
            (.closeRequest, "closeRequest"),
            (.none, "none"),
        ]

        for (value, raw) in cases {
            let tag = Dialog {}
                .closedBy(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <dialog closedby></dialog>
                    """#
            }
            else {
                expectation = #"""
                    <dialog closedby="\#(raw)"></dialog>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
