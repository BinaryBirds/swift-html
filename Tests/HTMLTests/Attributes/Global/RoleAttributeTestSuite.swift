import SGML
import Testing

@testable import HTML

@Suite
struct RoleAttributeTestSuite {

    @Test
    func rendersRoleValue() async throws {
        let tag = A {}
            .role("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a role="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
