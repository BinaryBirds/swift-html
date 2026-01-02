import SGML
import Testing

@testable import HTML

@Suite
struct UlTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Ul {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ul></ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func list() async throws {
        let tag = Ul {
            Li("a")
            Li("b")
            Li {
                P("c")
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <ul>
                <li>a</li>
                <li>b</li>
                <li>
                    <p>c</p>
                </li>
            </ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
