import SGML
import Testing

@testable import HTML

@Suite
struct LowAttributeTestSuite {

    @Test
    func rendersLowValue() async throws {
        let tag = Meter {}
            .low(1.5)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meter low="1.5"></meter>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
