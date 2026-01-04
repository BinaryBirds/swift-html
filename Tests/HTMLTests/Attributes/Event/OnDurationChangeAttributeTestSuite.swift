import SGML
import Testing

@testable import HTML

@Suite
struct OnDurationChangeAttributeTestSuite {

    @Test
    func rendersOnDurationChangeValue() async throws {
        let tag = A {}
            .onDurationChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondurationchange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
