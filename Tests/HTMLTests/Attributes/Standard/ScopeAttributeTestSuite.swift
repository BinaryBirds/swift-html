import SGML
import Testing

@testable import HTML

@Suite
struct ScopeAttributeTestSuite {

    @Test
    func rendersScopeValues() async throws {
        let cases: [(ScopeAttributeValue, String)] = [
            (.col, "col"),
            (.row, "row"),
            (.colgroup, "colgroup"),
            (.rowgroup, "rowgroup"),
        ]

        for (value, raw) in cases {
            let tag = Th("heading")
                .scope(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <th scope="\#(raw)">heading</th>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
