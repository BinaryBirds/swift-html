import SGML
import Testing

@testable import HTML

@Suite
struct DataTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Data("Tomato")
            .value("123")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <data value="123">Tomato</data>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
