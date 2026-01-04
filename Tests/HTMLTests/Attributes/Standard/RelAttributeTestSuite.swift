import SGML
import Testing

@testable import HTML

@Suite
struct RelAttributeTestSuite {

    @Test
    func rendersRelValues() async throws {
        let cases: [(RelAttributeValue, String)] = [
            (.alternate, "alternate"),
            (.author, "author"),
            (.bookmark, "bookmark"),
            (.external, "external"),
            (.help, "help"),
            (.license, "license"),
            (.next, "next"),
            (.nofollow, "nofollow"),
            (.noopenero, "noopenero"),
            (.noreferrer, "noreferrer"),
            (.prev, "prev"),
            (.search, "search"),
            (.tag, "tag"),
        ]

        for (value, raw) in cases {
            let tag = A {}
                .rel(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <a rel></a>
                    """#
            }
            else {
                expectation = #"""
                    <a rel="\#(raw)"></a>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
