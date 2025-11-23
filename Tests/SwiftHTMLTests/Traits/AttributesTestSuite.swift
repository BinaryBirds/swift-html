import SGML
import SwiftHTML
import Testing

@Suite
struct AttributesTestSuite {

    struct Style: Attribute {
        var value: String?

        init(_ value: String? = nil) {
            self.value = value
        }
    }

    struct Alignment: Attribute {

        enum Value: String {
            case left
            case right
            case middle
            case justify
        }

        static let name = "align"
        var value: String?

        init(_ value: Value) {
            self.value = value.rawValue
        }
    }

    @Test
    func set() async throws {

        let tag = P("lorem ipsum")
            .setAttribute(ClassAttribute("text"))
            .setAttributeValueBy(name: "align", value: "left")

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <p align="left" class="text">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func setOverride() async throws {

        let tag = P("lorem ipsum")
            .setAttribute(ClassAttribute("text"))
            .setAttributeValueBy(name: "align", value: "left")
            .setAttributes([
                ClassAttribute("note")
            ])
            .setAttributeValueBy(name: "align", value: "right")

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <p align="right" class="note">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func addValues() async throws {

        let tag = P("lorem ipsum")
            .addAttributeValue(ClassAttribute("foo"))
            .addAttributeValue(ClassAttribute("bar"))
            .addAttributeValues([
                ClassAttribute("baz")
            ])

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <p class="bar baz foo">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func removeValues() async throws {

        let tag = P("lorem ipsum")
            .addAttributeValues([
                ClassAttribute("foo"),
                ClassAttribute("baz"),
                ClassAttribute("bar"),
            ])
            .addAttributeValues([
                Style("a"),
                Style("b"),
                Style("c"),
            ])
            .addAttributeValue(Alignment(.left))
            .removeAttributeBy(ClassAttribute.self)
            .removeAttributeBy(name: "style")
            .removeAttributeValueBy(
                Alignment(
                    .left
                )
            )

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <p>lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func removeValuesPreserving() async throws {

        let tag = P("lorem ipsum")
            .addAttributeValues([
                ClassAttribute("foo")
            ])
            .addAttributeValues([
                Style("a")
            ])
            .addAttributeValue(Alignment(.left))
            .removeAttributeValueBy(
                ClassAttribute("foo"),
                preservingEmptyAttribute: true
            )
            .removeAttributeValueBy(
                name: "style",
                value: "a",
                preservingEmptyAttribute: true
            )
            .removeAttributeValueBy(
                Alignment(
                    .right
                )
            )

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <p align="left" class style>lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    //
    //    func testCustomInitWithAttribute() {
    //        let doc = Document {
    //            Div("some-value") {
    //                Span("a")
    //                Span("b")
    //            }
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            #"<div some-key="some-value"><span>a</span><span>b</span></div>"#,
    //            html
    //        )
    //    }
    //
    //    func testClassAttribute() {
    //        let doc = Document {
    //            Span("").class("a", "b", "", "b", "c")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="a b b c"></span>"#, html)
    //    }
    //
    //    func testMultipleClasses() {
    //        let doc = Document {
    //            Span("")
    //                .class("a", "b", "c")
    //                .class("d", "e", "f")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="d e f"></span>"#, html)
    //    }
    //
    //    func testClassManipulation() {
    //        let doc = Document {
    //            Span("")
    //                .class("a", "b", "c")
    //                .class(add: ["d", "e", "f"])
    //                .class(add: "b", true)
    //                .class(remove: ["b", "c", "d"])
    //                .class(remove: "e", true)
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="a f"></span>"#, html)
    //    }
    //
    //    func testAddClass() {
    //        let doc = Document {
    //            Span("")
    //                .class("a", "b", "c")
    //                .class(add: "d")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="a b c d"></span>"#, html)
    //    }
    //
    //    func testRemoveClass() {
    //        let doc = Document {
    //            Span("")
    //                .class("a", "b", "c")
    //                .class(remove: "b")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="a c"></span>"#, html)
    //    }
    //
    //    func testRemoveLastClass() {
    //        let doc = Document {
    //            Span("")
    //                .class("a")
    //                .class(remove: "a")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span></span>"#, html)
    //    }
    //
    //    func testToggleAddClass() {
    //        let doc = Document {
    //            Span("")
    //                .class("a", "b", "c")
    //                .class(toggle: "d")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="a b c d"></span>"#, html)
    //    }
    //
    //    func testToggleRemoveClass() {
    //        let doc = Document {
    //            Span("")
    //                .class("a", "b", "c")
    //                .class(toggle: "b")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span class="a c"></span>"#, html)
    //    }
    //
    //    func testStyleAttribute() {
    //        let doc = Document {
    //            Span("").style("a", "b", "", "b", "c")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="a;b;b;c"></span>"#, html)
    //    }
    //
    //    func testMultipleStylees() {
    //        let doc = Document {
    //            Span("")
    //                .style("a", "b", "c")
    //                .style("d", "e", "f")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="d;e;f"></span>"#, html)
    //    }
    //
    //    func testStyleManipulation() {
    //        let doc = Document {
    //            Span("")
    //                .style("a", "b", "c")
    //                .style(add: ["d", "e", "f"])
    //                .style(add: "b", true)
    //                .style(remove: ["b", "c", "d"])
    //                .style(remove: "e", true)
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="a;f"></span>"#, html)
    //    }
    //
    //    func testAddStyle() {
    //        let doc = Document {
    //            Span("")
    //                .style("a", "b", "c")
    //                .style(add: "d")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="a;b;c;d"></span>"#, html)
    //    }
    //
    //    func testRemoveStyle() {
    //        let doc = Document {
    //            Span("")
    //                .style("a", "b", "c")
    //                .style(remove: "b")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="a;c"></span>"#, html)
    //    }
    //
    //    func testRemoveLastStyle() {
    //        let doc = Document {
    //            Span("")
    //                .style("a")
    //                .style(remove: "a")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span></span>"#, html)
    //    }
    //
    //    func testToggleAddStyle() {
    //        let doc = Document {
    //            Span("")
    //                .style("a", "b", "c")
    //                .style(toggle: "d")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="a;b;c;d"></span>"#, html)
    //    }
    //
    //    func testToggleRemoveStyle() {
    //        let doc = Document {
    //            Span("")
    //                .style("a", "b", "c")
    //                .style(toggle: "b")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span style="a;c"></span>"#, html)
    //    }
    //
    //    func testSetEmptyStyle() {
    //        let doc = Document {
    //            Span("")
    //                .style("")
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(#"<span></span>"#, html)
    //    }
    //
    //    func testTextTag() {
    //        let doc = Document {
    //            P {
    //                Span("foo")
    //                Text("bar")
    //                Span("baz")
    //            }
    //        }
    //
    //        let html = """
    //            <p>
    //                <span>foo</span>
    //                bar
    //                <span>baz</span>
    //            </p>
    //            """
    //
    //        assert(doc: doc, html: html)
    //    }
    //
    //    func testMultiGroupTagBuilderAndRenderer() {
    //        let values: [String] = ["a", "b", "c"]
    //
    //        let doc = Document {
    //            Div {
    //                for item in values {
    //                    GroupTag {
    //                        H1(item)
    //                        P(item)
    //                    }
    //                }
    //            }
    //        }
    //
    //        let html = """
    //            <div>
    //                <h1>a</h1>
    //                <p>a</p>
    //                <h1>b</h1>
    //                <p>b</p>
    //                <h1>c</h1>
    //                <p>c</p>
    //            </div>
    //            """
    //        assert(doc: doc, html: html)
    //    }
    //
    //    func testHtmlDocument() {
    //        let doc = Document(.html) {
    //            Html {
    //                Head {
    //                    Title("Hello Swift DSL")
    //
    //                    Meta().charset("utf-8")
    //                    Meta().name(.viewport)
    //                        .content("width=device-width, initial-scale=1")
    //
    //                    Link(rel: .stylesheet).href("./css/style.css")
    //                }
    //                Body {
    //                    Main {
    //                        Div {
    //                            Section {
    //                                Img(
    //                                    src: "./images/swift.png",
    //                                    alt: "Swift Logo"
    //                                )
    //                                .title("Picture of the Swift Logo")
    //                                H1("Lorem ipsum")
    //                                    .class("red")
    //                                P(
    //                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta."
    //                                )
    //                                .class(["green", "blue"])
    //                                .spellcheck(false)
    //                            }
    //                            A("Hello Swift HTML DSL!")
    //                                .href("https://swift.org")
    //                                .target(.blank)
    //                                .download()
    //                            Abbr("WHO")
    //                                .title("World Health Organization")
    //                        }
    //                    }
    //                    .class("container")
    //
    //                    Script()
    //                        .src("./javascript/main.js")
    //                }
    //            }
    //        }
    //
    //        let html = """
    //            <!DOCTYPE html>
    //            <html>
    //                <head>
    //                    <title>Hello Swift DSL</title>
    //                    <meta charset="utf-8">
    //                    <meta name="viewport" content="width=device-width, initial-scale=1">
    //                    <link rel="stylesheet" href="./css/style.css">
    //                </head>
    //                <body>
    //                    <main class="container">
    //                        <div>
    //                            <section>
    //                                <img src="./images/swift.png" alt="Swift Logo" title="Picture of the Swift Logo">
    //                                <h1 class="red">Lorem ipsum</h1>
    //                                <p class="green blue" spellcheck="false">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta.</p>
    //                            </section>
    //                            <a href="https://swift.org" target="_blank" download>Hello Swift HTML DSL!</a>
    //                            <abbr title="World Health Organization">WHO</abbr>
    //                        </div>
    //                    </main>
    //                    <script src="./javascript/main.js"></script>
    //                </body>
    //            </html>
    //            """
    //        assert(doc: doc, html: html)
    //    }
}
