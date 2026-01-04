import SGML
import Testing

@testable import HTML

@Suite
struct EncTypeAttributeTestSuite {

    @Test
    func rendersEncTypeValues() async throws {
        let cases: [(EncTypeAttributeValue, String)] = [
            (.urlencoded, "application/x-www-form-urlencoded"),
            (.multipart, "multipart/form-data"),
            (.plain, "text/plain"),
        ]

        for (value, raw) in cases {
            let tag = Form {}
                .encType(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <form enctype="\#(raw)"></form>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
