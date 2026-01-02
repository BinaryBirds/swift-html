import SGML
import Testing

@testable import HTML

@Suite
struct AudioTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Audio {
            Text("Lorem ipsum.")
        }
        .src("test.mp3")
        .controls()
        .crossOrigin(.anonymous)
        .preload(.auto)
        .autoPlay()
        .muted()
        .loop()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio crossorigin="anonymous" preload="auto" src="test.mp3" autoplay controls loop muted>Lorem ipsum.</audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
