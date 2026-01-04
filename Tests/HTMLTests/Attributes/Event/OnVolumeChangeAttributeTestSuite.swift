import SGML
import Testing

@testable import HTML

@Suite
struct OnVolumeChangeAttributeTestSuite {

    @Test
    func rendersOnVolumeChangeValue() async throws {
        let tag = A {}
            .onVolumeChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onvolumechange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
