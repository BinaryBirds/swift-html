import SGML
import Testing

@testable import HTML

@Suite
struct FormEncTypeAttributeTestSuite {

    @Test
    func rendersFormEncTypeValue() async throws {
        let tag = Button {}
            .formEncType(.multipart)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button formenctype="multipart/form-data"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
