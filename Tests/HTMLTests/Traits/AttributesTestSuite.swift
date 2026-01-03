import SGML
import Testing

@testable import HTML

@Suite
struct AttributesTestSuite {

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
            .setAttribute(name: "class", value: "text")
            .setAttribute(name: "align", value: "left")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="text" align="left">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func setOverride() async throws {

        let tag = P("lorem ipsum")
            .setAttribute(name: "class", value: "text")
            .setAttribute(name: "align", value: "left")
            .setAttribute(name: "class", value: "note")
            .setAttribute(name: "align", value: "right")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="note" align="right">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func addValues() async throws {

        let tag = P("lorem ipsum")
            .addAttribute(name: "class", value: "foo")
            .addAttribute(name: "class", value: "bar")
            .addAttribute(name: "class", value: "baz")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="foo bar baz">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func removeValues() async throws {

        let tag = P("lorem ipsum")
            .addAttribute(name: "class", value: "foo")
            .addAttribute(name: "class", value: "baz")
            .addAttribute(name: "class", value: "bar")
            .addAttribute(name: "style", value: "a")
            .addAttribute(name: "style", value: "b")
            .addAttribute(name: "style", value: "c")
            .addAttribute(Alignment(.left))
            .removeAttribute(name: "class")
            .removeAttribute(name: "style")
            .removeAttribute(
                Alignment(
                    .left
                )
            )

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func removeValuesPreserving() async throws {

        let tag = P("lorem ipsum")
            .addAttribute(name: "class", value: "foo")
            .addAttribute(name: "style", value: "a")
            .addAttribute(Alignment(.left))
            .removeAttribute(
                name: "class",
                value: "foo",
                preservingEmptyAttribute: true
            )
            .removeAttribute(
                name: "style",
                value: "a",
                preservingEmptyAttribute: true
            )
            .removeAttribute(
                Alignment(
                    .right
                )
            )

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class style align="left">lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    // MARK: - class

    @Test
    func addClassModifier() async throws {
        let tag = P("Lorem ipsum.")
            .addClass("a")
            .addClass("b")
            .addClass("")
            .addClass("b")
            .addClass("c")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="a b c">Lorem ipsum.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func classModifiersOverride() async throws {
        let tag = P("Lorem ipsum.")
            .class("a", "b", "c")
            .setClass("b")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="b">Lorem ipsum.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func removeClassModifier() async throws {
        let tag = P("Lorem ipsum.")
            .class(["a", "b", "c", "d", "e", "f"])
            .removeClass("e")
            .removeClass("c")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="a b d f">Lorem ipsum.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func removeClassModifierAll() async throws {
        let tag = P("Lorem ipsum.")
            .addClass("a")
            .removeClass("a")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p>Lorem ipsum.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func toggleClassModifier() async throws {
        let tag = P("Lorem ipsum.")
            .addClass("a")
            .toggleClass("a")
            .toggleClass("b")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="b">Lorem ipsum.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    // MARK: - style

    @Test
    func styleModifier() async throws {
        let tag = P("Lorem ipsum.")
            .style("a")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p style="a">Lorem ipsum.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
