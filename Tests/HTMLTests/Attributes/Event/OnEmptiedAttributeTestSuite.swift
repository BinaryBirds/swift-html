import SGML
import Testing

@testable import HTML

@Suite
struct OnEmptiedAttributeTestSuite {

    @Test
    func rendersOnEmptiedValue() async throws {
        let tag = A {}
            .onEmptied("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onemptied="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
