import SGML
import Testing

@testable import HTML

@Suite
struct OnLostPointerCaptureAttributeTestSuite {

    @Test
    func rendersOnLostPointerCaptureValue() async throws {
        let tag = A {}
            .onLostPointerCapture("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onlostpointercapture="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
