import SGML
import Testing

@testable import HTML

@Suite
struct LoadingAttributeTestSuite {

    @Test
    func rendersLoadingValues() async throws {
        let cases: [(LoadingAttributeValue, String)] = [
            (.eager, "eager"),
            (.lazy, "lazy"),
        ]

        for (value, raw) in cases {
            let tag = Img(src: "foo.jpg", alt: "Foo")
                .loading(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <img src="foo.jpg" alt="Foo" loading="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
