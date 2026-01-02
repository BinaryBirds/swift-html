import SGML
import Testing

@testable import HTML

@Suite
struct TrackTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Track(src: "foo.mp4")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <track src="foo.mp4">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
