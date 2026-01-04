import SGML
import Testing

@testable import HTML

@Suite
struct DirAttributeTestSuite {

    @Test
    func rendersDirValues() async throws {
        let cases: [(DirAttributeValue, String)] = [
            (.ltr, "ltr"),
            (.rtl, "rtl"),
            (.auto, "auto"),
        ]

        for (value, raw) in cases {
            let tag = P("lorem")
                .dir(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <p dir="\#(raw)">lorem</p>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
