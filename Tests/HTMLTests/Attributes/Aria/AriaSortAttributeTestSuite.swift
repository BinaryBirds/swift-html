import SGML
import Testing

@testable import HTML

@Suite
struct AriaSortAttributeTestSuite {

    @Test
    func rendersAriaSortValues() async throws {
        let cases: [(AriaSortAttributeValue, String)] = [
            (.ascending, "ascending"),
            (.descending, "descending"),
            (.none, "none"),
            (.other, "other"),
        ]

        for (value, raw) in cases {
            let tag = Th("heading")
                .ariaSort(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <th aria-sort="\#(raw)">heading</th>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
