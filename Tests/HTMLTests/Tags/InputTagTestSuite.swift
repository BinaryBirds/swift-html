import SGML
import Testing

@testable import HTML

@Suite
struct InputTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Input()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func checkedInput() async throws {
        let tag = Input()
            .type(.checkbox)
            .checked()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input type="checkbox" checked>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func checkedInputFalse() async throws {
        let condition = false

        let tag = Input()
            .type(.checkbox)
            .if(condition) {
                $0.checked()
            }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input type="checkbox">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
