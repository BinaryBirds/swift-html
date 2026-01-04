import SGML
import Testing

@testable import HTML

@Suite
struct LabelAttributeTestSuite {

    @Test
    func rendersLabelValue() async throws {
        let tag = Optgroup {}
            .label("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <optgroup label="value"></optgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
