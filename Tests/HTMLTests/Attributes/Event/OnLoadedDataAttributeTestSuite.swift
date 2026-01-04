import SGML
import Testing

@testable import HTML

@Suite
struct OnLoadedDataAttributeTestSuite {

    @Test
    func rendersOnLoadedDataValue() async throws {
        let tag = A {}
            .onLoadedData("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onloadeddata="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
