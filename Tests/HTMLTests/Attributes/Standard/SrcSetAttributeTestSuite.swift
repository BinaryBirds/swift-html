import SGML
import Testing

@testable import HTML

@Suite
struct SrcSetAttributeTestSuite {

    @Test
    func rendersSrcSetValue() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .srcSet("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" srcset="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
