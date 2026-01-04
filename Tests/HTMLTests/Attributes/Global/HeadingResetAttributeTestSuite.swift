import SGML
import Testing

@testable import HTML

@Suite
struct HeadingResetAttributeTestSuite {

    @Test
    func rendersHeadingResetValue() async throws {
        let tag = A {}
            .headingReset(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a headingreset="2"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
