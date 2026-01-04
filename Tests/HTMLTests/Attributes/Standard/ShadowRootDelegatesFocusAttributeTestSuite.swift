import SGML
import Testing

@testable import HTML

@Suite
struct ShadowRootDelegatesFocusAttributeTestSuite {

    @Test
    func rendersShadowRootDelegatesFocusValue() async throws {
        let tag = Template {}
            .shadowRootDelegatesFocus("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template shadowrootdelegatesfocus="value"></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
