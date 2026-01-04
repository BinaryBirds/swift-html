import SGML
import Testing

@testable import HTML

@Suite
struct OnPageSwapAttributeTestSuite {

    @Test
    func rendersOnPageSwapValue() async throws {
        let tag = A {}
            .onPageSwap("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpageswap="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
