import SGML
import Testing

@testable import HTML

@Suite
struct ImgTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
