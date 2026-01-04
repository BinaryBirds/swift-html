import SGML
import Testing

@testable import HTML

@Suite
struct SrcLangAttributeTestSuite {

    @Test
    func rendersSrcLangValue() async throws {
        let tag = Track(src: "foo.mp4")
            .srcLang("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <track src="foo.mp4" srclang="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
