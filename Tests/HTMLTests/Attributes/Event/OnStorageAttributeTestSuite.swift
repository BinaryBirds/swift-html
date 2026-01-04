import SGML
import Testing

@testable import HTML

@Suite
struct OnStorageAttributeTestSuite {

    @Test
    func rendersOnStorageValue() async throws {
        let tag = A {}
            .onStorage("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onstorage="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
