import SGML
import Testing

@testable import HTML

@Suite
struct UseMapAttributeTestSuite {

    @Test
    func rendersUseMapValue() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .useMap("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" usemap="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
