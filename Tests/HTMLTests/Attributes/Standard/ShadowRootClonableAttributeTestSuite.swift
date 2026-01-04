import SGML
import Testing

@testable import HTML

@Suite
struct ShadowRootClonableAttributeTestSuite {

    @Test
    func rendersShadowRootClonableValue() async throws {
        let tag = Template {}
            .shadowRootClonable("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template shadowrootclonable="value"></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
