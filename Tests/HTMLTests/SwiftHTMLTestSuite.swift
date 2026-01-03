import SGML
import Testing

@testable import HTML

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
                    <link rel="stylesheet" href="./css/style.css">
                    <script></script>
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

    @Test
    func compatiblityWithVersion1Syntax() async throws {
        let html = Html {
            Head {
                Title("Hello Swift DSL")

                Meta()
                    .charset("utf-8")
                Meta()
                    .name(.viewport)
                    .content("width=device-width, initial-scale=1")

                Link(rel: .stylesheet).href("./css/style.css")
            }
            Body {
                Main {
                    Div {
                        Section {
                            Img(
                                src: "./images/swift.png",
                                alt: "Swift Logo"
                            )
                            .title("Picture of the Swift Logo")
                            H1("Lorem ipsum")
                                .class("red")
                            P(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta."
                            )
                            .class(["green", "blue"])
                            .spellCheck(false)
                        }
                        A("Hello Swift HTML DSL!")
                            .href("https://swift.org")
                            .target(.blank)
                            .download()
                        Abbr("WHO")
                            .title("World Health Organization")
                    }
                }
                .class("container")

                Script()
                    .src("./javascript/main.js")
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .html, root: html)

        let expectation = #"""
            <!doctype html>
            <html>
                <head>
                    <title>Hello Swift DSL</title>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <link rel="stylesheet" href="./css/style.css">
                </head>
                <body>
                    <main class="container">
                        <div>
                            <section>
                                <img src="./images/swift.png" alt="Swift Logo" title="Picture of the Swift Logo">
                                <h1 class="red">Lorem ipsum</h1>
                                <p class="green blue" spellcheck="false">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta.</p>
                            </section>
                            <a href="https://swift.org" target="_blank" download>Hello Swift HTML DSL!</a>
                            <abbr title="World Health Organization">WHO</abbr>
                        </div>
                    </main>
                    <script src="./javascript/main.js"></script>
                </body>
            </html>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
