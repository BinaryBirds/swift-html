import SGML
import Testing

@testable import HTML

@Suite
struct RubyTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Ruby("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ruby>Lorem ipsum</ruby>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
