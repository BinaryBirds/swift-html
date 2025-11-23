import SGML
import SwiftHTML
import Testing

@Suite
struct SwiftHTMLTestSuite {

    @Test
    func basicHTML() async throws {

        let html = Html {
            Head {
                Title("foo")
                Meta().charset("utf-8")
                Style("body { background: red; }")
                Link(rel: .stylesheet)
                    .href("./css/style.css")

                Script()

            }
            Body {
                P {
                    Text("Hello,")
                    Br()
                    Text("World!")
                }
                Hr()

                Script(#"console.log("Hello, World!")"#)

                Noscript {
                    P("JavaScript is not available.")
                }
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .html, root: html)

        let expectation = #"""
            <!doctype html>
            <html>
                <head>
                    <title>foo</title>
                    <meta charset="utf-8">
                    <style>body { background: red; }</style>
                    <link href="./css/style.css" rel="stylesheet">
                    <script>
                </head>
                <body>
                    <p>Hello,<br>World!</p>
                    <hr>
                    <script>console.log("Hello, World!")</script>
                    <noscript>
                        <p>JavaScript is not available.</p>
                    </noscript>
                </body>
            </html>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
