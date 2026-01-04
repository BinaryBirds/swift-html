import SGML
import Testing

@testable import HTML

@Suite
struct FormTargetAttributeTestSuite {

    @Test
    func rendersFormTargetValues() async throws {
        let cases: [(FormTargetAttributeValue, String)] = [
            (.default, "_self"),
            (.blank, "_blank"),
            (.parent, "_parent"),
            (.top, "_top"),
            (.frame("foo"), "foo"),
        ]

        for (value, raw) in cases {
            let tag = Button {}
                .formTarget(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <button formtarget></button>
                    """#
            }
            else {
                expectation = #"""
                    <button formtarget="\#(raw)"></button>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
