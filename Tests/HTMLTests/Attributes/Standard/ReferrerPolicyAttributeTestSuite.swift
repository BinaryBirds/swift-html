import SGML
import Testing

@testable import HTML

@Suite
struct ReferrerPolicyAttributeTestSuite {

    @Test
    func rendersReferrerPolicyValues() async throws {
        let cases: [(ReferrerPolicyAttributeValue, String)] = [
            (.noReferrer, "no-referrer"),
            (.noReferrerWhenDowngrade, "no-referrer-when-downgrade"),
            (.origin, "origin"),
            (.originWhenCrossOrigin, "origin-when-cross-origin"),
            (.sameOrigin, "same-origin"),
            (.strictOriginWhenCrossOrigin, "strict-origin-when-cross-origin"),
            (.unsafeUrl, "unsafe-url"),
        ]

        for (value, raw) in cases {
            let tag = A {}
                .referrerPolicy(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <a referrerpolicy></a>
                    """#
            }
            else {
                expectation = #"""
                    <a referrerpolicy="\#(raw)"></a>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
