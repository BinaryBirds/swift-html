import SGML
import Testing

@testable import HTML

@Suite
struct KindAttributeTestSuite {

    @Test
    func rendersKindValues() async throws {
        let cases: [(KindAttributeValue, String)] = [
            (.subtitles, "subtitles"),
            (.captions, "captions"),
            (.descriptions, "descriptions"),
            (.chapters, "chapters"),
            (.metadata, "metadata"),
        ]

        for (value, raw) in cases {
            let tag = Track(src: "foo.mp4")
                .kind(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <track src="foo.mp4" kind="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
