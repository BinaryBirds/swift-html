import SGML
import Testing

@testable import HTML

@Suite
struct HttpEquivAttributeTestSuite {

    @Test
    func rendersHttpEquivValues() async throws {
        let cases: [(HttpEquivAttributeValue, String)] = [
            (.contentSecurityPolicy, "content-security-policy"),
            (.contentType, "content-type"),
            (.defaultStyle, "default-style"),
            (.refresh, "refresh"),
        ]

        for (value, raw) in cases {
            let tag = Meta()
                .httpEquiv(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <meta http-equiv>
                    """#
            }
            else {
                expectation = #"""
                    <meta http-equiv="\#(raw)">
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
