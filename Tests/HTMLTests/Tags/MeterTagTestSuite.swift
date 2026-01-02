import SGML
import Testing

@testable import HTML

@Suite
struct MeterTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Meter("2 out of 10")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meter>2 out of 10</meter>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
