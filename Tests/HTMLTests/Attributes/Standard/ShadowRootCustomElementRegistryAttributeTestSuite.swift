import SGML
import Testing

@testable import HTML

@Suite
struct ShadowRootCustomElementRegistryAttributeTestSuite {

    @Test
    func rendersShadowRootCustomElementRegistryValue() async throws {
        let tag = Template {}
            .shadowRootCustomElementRegistry("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template shadowrootcustomelementregistry="value"></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
