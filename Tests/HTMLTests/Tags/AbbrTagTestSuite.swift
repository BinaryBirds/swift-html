import SGML
import Testing

@testable import HTML

@Suite
struct AbbrTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Abbr("SSWG")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <abbr>SSWG</abbr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func title() async throws {
        let tag = Abbr("SSWG")
            .title("Swift Server Workgroup")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <abbr title="Swift Server Workgroup">SSWG</abbr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
