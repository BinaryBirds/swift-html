import SGML
import Testing

@testable import HTML

@Suite
struct CanvasTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Canvas("Your browser does not support the canvas tag.")
            .width(300)
            .height(150)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <canvas width="300" height="150">Your browser does not support the canvas tag.</canvas>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
