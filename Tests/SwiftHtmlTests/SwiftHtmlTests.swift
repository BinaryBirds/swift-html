//
//  SwiftHtmlTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftHtml

extension Div {

    convenience init(_ value: String, @TagBuilder _ builder: () -> [Tag]) {
        self.init(builder())
        self.setAttributes([
            .init(key: "some-key", value: value)
        ])
    }
}

final class SwiftHtmlTests: XCTestCase {
     
    func testCustomInitWithAttribute() {
        let doc = Document {
            Div("some-value") {
                Span("a")
                Span("b")
            }
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<div some-key="some-value"><span>a</span><span>b</span></div>"#, html)
    }
    
    func testClassAttributeWithSpaces() {
        let span = Span("").attribute("class", "   a  b b   c")
        XCTAssertTrue(span.classes.count == 3)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("b"))
        XCTAssertTrue(span.classes.contains("c"))
    }
    
    func testClassAttribute() {
        let span = Span("").class("a", "b", "", "b", "c")
        XCTAssertTrue(span.classes.count == 3)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("b"))
        XCTAssertTrue(span.classes.contains("c"))
    }
    
    func testEmptyClassAttribute() {
        let span = Span("")
            .class("a", "b", "c")
            .class("")
        XCTAssertTrue(span.classes.count == 0)
    }
    
    func testSetNilClass() {
        let span = Span("")
            .class("a", "b", "c")
            .class(nil)
        XCTAssertTrue(span.classes.count == 3)
    }
    
    func testMultipleClasses() {
        let span = Span("")
            .class("a", "b", "c")
            .class("d", "e", "f")
        XCTAssertTrue(span.classes.count == 3)
        XCTAssertTrue(span.classes.contains("d"))
        XCTAssertTrue(span.classes.contains("e"))
        XCTAssertTrue(span.classes.contains("f"))
    }
    
    func testClassManipulation() {
        let span = Span("")
            .class("a", "b", "c")
            .class(insert: ["d", "e", "f"])
            .class(insert: "b", true)
            .class(remove: ["b", "c", "d"])
            .class(remove: "e", true)
        XCTAssertTrue(span.classes.count == 2)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("f"))
    }
    
    func testInsertClass() {
        let span = Span("")
            .class("a", "b", "c")
            .class(insert: "d")
        XCTAssertTrue(span.classes.count == 4)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("b"))
        XCTAssertTrue(span.classes.contains("c"))
        XCTAssertTrue(span.classes.contains("d"))
    }
    
    func testRemoveClass() {
        let span = Span("")
            .class("a", "b", "c")
            .class(remove: "b")
        XCTAssertTrue(span.classes.count == 2)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("c"))
    }
    
    func testRemoveLastClass() {
        let doc = Document {
            Span("")
                .class("a")
                .class(remove: "a")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span></span>"#, html)
    }
    
    func testToggleAddClass() {
        let span = Span("")
            .class("a", "b", "c")
            .class(toggle: "d")
        XCTAssertTrue(span.classes.count == 4)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("b"))
        XCTAssertTrue(span.classes.contains("c"))
        XCTAssertTrue(span.classes.contains("d"))
    }
    
    func testToggleRemoveClass() {
        let span = Span("")
            .class("a", "b", "c")
            .class(toggle: "b")
        XCTAssertTrue(span.classes.count == 2)
        XCTAssertTrue(span.classes.contains("a"))
        XCTAssertTrue(span.classes.contains("c"))
    }
    
    func testIntersectClasses() {
        let classes: Set<String> = [ "a", "b", "c" ]
        let otherClasses: Set<String> = [ "b", "c", "d" ]
        let span = Span("")
            .class(classes)
            .class(intersect: otherClasses)
        XCTAssertTrue(span.classes.count == 2)
        XCTAssertTrue(span.classes.contains("b"))
        XCTAssertTrue(span.classes.contains("c"))
    }
    
    func testSetEmptyStyle() {
        let doc = Document {
            Span("")
            .style("")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<span></span>"#, html)
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
    
    func testMultiGroupTagBuilderAndRenderer() {
        let values: [String] = ["a", "b", "c"]
        
        let doc = Document {
            Div {
                values.map { item -> Tag in
                    GroupTag {
                        H1(item)
                        P(item)
                    }
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <div>
                                <h1>a</h1>
                                <p>a</p>
                                <h1>b</h1>
                                <p>b</p>
                                <h1>c</h1>
                                <p>c</p>
                            </div>
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
                                    .class(["blue", "green"])
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
        
        let blueGreenClasses = """
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
                                                <p class="blue green" spellcheck="false">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta.</p>
                                            </section>
                                            <a href="https://swift.org" target="_blank" download>Hello Swift HTML DSL!</a>
                                            <abbr title="World Health Organization">WHO</abbr>
                                        </div>
                                    </main>
                                    <script src="./javascript/main.js"></script>
                                </body>
                            </html>
                            """
        let greenBlueClasses = """
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
                            """
        let html = DocumentRenderer().render(doc)
        XCTAssertTrue(html == blueGreenClasses || html == greenBlueClasses)
    }
}
