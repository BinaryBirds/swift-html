import SGML
import Testing

@testable import HTML

@Suite
struct OnRateChangeAttributeTestSuite {

    @Test
    func rendersOnRateChangeValue() async throws {
        let tag = A {}
            .onRateChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onratechange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
