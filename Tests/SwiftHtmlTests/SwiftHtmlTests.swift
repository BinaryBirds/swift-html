//
//  SwiftHtmlTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftHtml

final class SwiftHtmlTests: XCTestCase {
        
    func testClassAttribute() {
        let doc = Document {
            Span("").class("a", "b", "", "b", "c")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="a b b c"></span>"#, html)
    }
    
    func testMultipleClasses() {
        let doc = Document {
            Span("")
                .class("a", "b", "c")
                .class("d", "e", "f")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="d e f"></span>"#, html)
    }
    
    func testClassManipulation() {
        let doc = Document {
            Span("")
                .class("a", "b", "c")
                .class(add: ["d", "e", "f"])
                .class(add: "b", true)
                .class(remove: ["b", "c", "d"])
                .class(remove: "e")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="a f"></span>"#, html)
    }
    
    func testAddClass() {
        let doc = Document {
            Span("")
                .class("a", "b", "c")
                .class(add: "d")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="a b c d"></span>"#, html)
    }
    
    func testRemoveClass() {
        let doc = Document {
            Span("")
                .class("a", "b", "c")
                .class(remove: "b")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="a c"></span>"#, html)
    }
    
    func testToggleAddClass() {
        let doc = Document {
            Span("")
                .class("a", "b", "c")
                .class(toggle: "d")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="a b c d"></span>"#, html)
    }
    
    func testToggleRemoveClass() {
        let doc = Document {
            Span("")
                .class("a", "b", "c")
                .class(toggle: "b")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span class="a c"></span>"#, html)
    }
    
    func testTextTag() {
        let doc = Document() {
            P {
                Span("foo")
                Text("bar")
                Span("baz")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <p>
                                <span>foo</span>
                                bar
                                <span>baz</span>
                            </p>
                            """)
    }
    
    func testHtmlDocument() {
        let doc = Document(.html) {
            Html {
                Head {
                    Title("Hello Swift DSL")
                    
                    Meta().charset("utf-8")
                    Meta().name(.viewport).content("width=device-width, initial-scale=1")

                    Link(rel: .stylesheet).href("./css/style.css")
                }
                Body {
                    Main {
                        Div {
                            Section {
                                Img(src: "./images/swift.png", alt: "Swift Logo")
                                    .title("Picture of the Swift Logo")
                                H1("Lorem ipsum")
                                    .class("red")
                                P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta.")
                                    .class(["green", "blue"])
                                    .spellcheck(false)
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
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <!DOCTYPE html>
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
                            """)
    }
}
