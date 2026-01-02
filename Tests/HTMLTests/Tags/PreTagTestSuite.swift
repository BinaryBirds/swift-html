import SGML
import Testing

@testable import HTML

@Suite
struct PreTagTestSuite {

    @Test
    func oneLiner() async throws {
        let tag = Div {
            Pre(#"print("Hello, World")"#)
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <div>
                <pre>print("Hello, World")</pre>
            </div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func multiLine() async throws {
        let tag = Div {
            Pre(
                #"""
                func main() -> Int {
                    return 0
                }
                """#
            )
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <div>
                <pre>func main() -> Int {
                return 0
            }</pre>
            </div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func nestedMultiLine() async throws {
        let tag = Div {
            Pre {
                Code(
                    #"""
                    func main() -> Int {
                        return 0
                    }
                    """#
                )
                .class("language-swift")
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <div>
                <pre>
                    <code class="language-swift">func main() -> Int {
                return 0
            }</code>
                </pre>
            </div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
