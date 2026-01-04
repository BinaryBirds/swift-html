import SGML
import Testing

@testable import HTML

@Suite
struct SizesAttributeTestSuite {

    @Test
    func rendersSizesValue() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .sizes("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" sizes="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
