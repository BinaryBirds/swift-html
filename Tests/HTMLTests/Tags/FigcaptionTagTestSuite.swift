import SGML
import Testing

@testable import HTML

@Suite
struct FigcaptionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Figcaption("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <figcaption></figcaption>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
