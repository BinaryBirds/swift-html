import SGML
import Testing

@testable import HTML

@Suite
struct IsMapAttributeTestSuite {

    @Test
    func rendersIsMapValue() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .isMap("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" ismap="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
