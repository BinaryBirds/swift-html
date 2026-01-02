import SGML
import Testing

@testable import HTML

@Suite
struct HtmlTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Html {
            Head {

            }
            Body {

            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <html><head></head><body></body></html>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
