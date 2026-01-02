import SGML
import Testing

@testable import HTML

@Suite
struct PictureTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Picture("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <picture></picture>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
