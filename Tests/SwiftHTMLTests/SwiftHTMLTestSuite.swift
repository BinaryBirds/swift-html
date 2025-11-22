import Testing

import SGML
import SwiftHTML

@Suite
struct SwiftHTMLTestSuite {
    
    @Test
    func html() async throws {
        
        let html = Html {
            Head()
            Body()
        }
        
        let renderer = Renderer(
            indent: 4
        )

        let doc = Document(
            type: .html,
            root: html
        )

        let expectation = #"""
        <!doctype html>
        <html>
            <head></head>
            <body></body>
        </html>
        """#
        
        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
