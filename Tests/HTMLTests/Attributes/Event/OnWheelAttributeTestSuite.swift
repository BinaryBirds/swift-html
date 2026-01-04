import SGML
import Testing

@testable import HTML

@Suite
struct OnWheelAttributeTestSuite {

    @Test
    func rendersOnWheelValue() async throws {
        let tag = A {}
            .onWheel("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onwheel="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
