import Testing

@testable import CSS

@Suite
struct SwiftCssTests {

    @Test
    func testMinifiedStylesheet() {
        let css = Stylesheet {
            Charset("UTF-8")
            Media {
                Root {
                    Margin(horizontal: 8.5.px, vertical: 8.px)
                    Padding(horizontal: 8.px, vertical: 8.px)
                }
            }
        }
        #expect(
            StylesheetRenderer(minify: true, indent: 2).render(css)
                == #"@charset "UTF-8";:root{margin:8.5px 8px;padding:8px 8px}"#
        )
    }

    @Test
    func testCustomIndentStylesheet() {
        let css = Stylesheet {
            Charset("UTF-8")
            Media {
                Root {
                    Margin(horizontal: 8.5.px, vertical: 8.px)
                    Padding(horizontal: 8.px, vertical: 8.px)
                }
            }
        }
        print(StylesheetRenderer(indent: 2).render(css))
        #expect(
            StylesheetRenderer(indent: 2).render(css) == #"""
                @charset "UTF-8";
                :root {
                  margin: 8.5px 8px;
                  padding: 8px 8px;
                }
                """#
        )
    }

    @Test
    func testStylesheet() {
        let css = Stylesheet {
            Charset("UTF-8")

            Media {
                Root {
                    Margin(horizontal: 8.5.px, vertical: 8.px)
                    Padding(horizontal: 8.px, vertical: 8.px)
                }
            }

            Media(.screen && .minWidth("600px")) {
                Class("button") {
                    Color("#cafe00")
                }
            }
            Media(.screen && .prefersColorScheme(.dark)) {
                Universal {
                    Margin(horizontal: 8.px, vertical: 8.px)
                }
            }

            Media(.screen && .displayMode(.standalone)) {
                Id("lead") {
                    Background(.color(.red))
                }
            }
        }

        #expect(
            StylesheetRenderer().render(css) == #"""
                @charset "UTF-8";
                :root {
                    margin: 8.5px 8px;
                    padding: 8px 8px;
                }
                @media screen and (min-width: 600px) {
                    .button {
                        color: #cafe00;
                    }
                }
                @media screen and (prefers-color-scheme: dark) {
                    * {
                        margin: 8px 8px;
                    }
                }
                @media screen and (display-mode: standalone) {
                    #lead {
                        background: red;
                    }
                }
                """#
        )
    }

    @Test
    func testVariable() {
        let css = Stylesheet {
            Media {
                Root {
                    Variable("size", "400px")
                }
                Class("container") {
                    Width(200.px)
                }
            }
            Media(.screen && .maxWidth("599px")) {
                Root {
                    Variable("size", "200px")
                }
            }
            Media(.screen && .prefersColorScheme(.dark)) {
                Root {
                    Variable("size", "500px")
                }
            }
            Media(.screen && .displayMode(.standalone)) {
                Root {
                    Variable("size", "460px")
                }
            }
        }

        #expect(
            StylesheetRenderer().render(css) == #"""
                :root {
                    --size: 400px;
                }
                .container {
                    width: 200px;
                }
                @media screen and (max-width: 599px) {
                    :root {
                        --size: 200px;
                    }
                }
                @media screen and (prefers-color-scheme: dark) {
                    :root {
                        --size: 500px;
                    }
                }
                @media screen and (display-mode: standalone) {
                    :root {
                        --size: 460px;
                    }
                }
                """#
        )
    }

    @Test
    func testMediaQueries() {
        let css = Stylesheet {
            Media {
                Root {
                    Background(.color(.red))
                }
            }
            Media(.screen && .maxWidth(599.px)) {
                Root {
                    Background(.color(.blue))
                }
            }
            Media(.screen && .prefersColorScheme(.dark)) {
                Root {
                    Background(.color(.green))
                }
            }
            Media(.screen && .displayMode(.standalone)) {
                Element("body") {
                    Background(.color(.yellow))
                }
            }
        }

        #expect(
            StylesheetRenderer().render(css) == #"""
                :root {
                    background: red;
                }
                @media screen and (max-width: 599px) {
                    :root {
                        background: blue;
                    }
                }
                @media screen and (prefers-color-scheme: dark) {
                    :root {
                        background: green;
                    }
                }
                @media screen and (display-mode: standalone) {
                    body {
                        background: yellow;
                    }
                }
                """#
        )
    }
}
