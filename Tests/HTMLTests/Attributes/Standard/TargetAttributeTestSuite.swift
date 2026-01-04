import SGML
import Testing

@testable import HTML

@Suite
struct TargetAttributeTestSuite {

    @Test
    func rendersTargetValues() async throws {
        let cases: [(TargetAttributeValue, String)] = [
            (.blank, "_blank"),
            (.self, "_self"),
            (.parent, "_parent"),
            (.top, "_top"),
        ]

        for (value, raw) in cases {
            let tag = A {}
                .target(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <a target></a>
                    """#
            }
            else {
                expectation = #"""
                    <a target="\#(raw)"></a>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
