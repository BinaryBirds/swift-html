import SGML
import Testing

@testable import HTML

@Suite
struct OptgroupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Optgroup {

        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <optgroup></optgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
