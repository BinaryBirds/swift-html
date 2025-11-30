import Testing

@testable import SwiftHTML

@Suite
struct TemplateTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Template {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
