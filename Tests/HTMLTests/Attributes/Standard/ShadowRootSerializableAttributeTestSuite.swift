import SGML
import Testing

@testable import HTML

@Suite
struct ShadowRootSerializableAttributeTestSuite {

    @Test
    func rendersShadowRootSerializableValue() async throws {
        let tag = Template {}
            .shadowRootSerializable("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template shadowrootserializable="value"></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
