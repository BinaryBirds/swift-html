import SGML
import Testing

@testable import HTML

@Suite
struct CiteTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Cite("The Reality Dysfunction")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <cite>The Reality Dysfunction</cite>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
