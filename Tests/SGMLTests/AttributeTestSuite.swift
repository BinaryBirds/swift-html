import Testing

@testable import SGML

@Suite
struct AttributeTestSuite {

    struct Root: StandardTag {
        var attributes: AttributeStore = .init()
        var children: [Element] = []
    }

    // MARK: -

    struct Class: Attribute {
        var value: String?

        init(_ value: String?) {
            self.value = value
        }
    }

    struct Style: Attribute {
        var value: String?

        init(_ value: String?) {
            self.value = value
        }
    }

    struct Enabled: Attribute {
        let value: String?

        init() {
            self.value = nil
        }
    }

    struct Alignment: Attribute {
        static let name = "align"
        let value: String?

        init(_ value: String?) {
            self.value = value
        }
    }

    // MARK: -

    @Test
    func custom() async throws {
        let doc = Document(
            root: Root()
                .setAttributes(
                    [
                        Class("custom")
                    ]
                )
        )

        let expectation = #"""
            <root class="custom"></root>
            """#

        let result = doc.render()
        #expect(result == expectation)
    }

    @Test
    func customNilValue() async throws {
        let doc = Document(
            root: Root()
                .setAttributes(
                    [
                        Enabled()
                    ]
                )
        )

        let expectation = #"""
            <root enabled></root>
            """#

        let result = doc.render()
        #expect(result == expectation)
    }

    @Test
    func mutation() async throws {
        let doc = Document(
            root: Root()
                .setAttributes(
                    [
                        Enabled()
                    ]
                )
                .modify {
                    $0.attributes.add(name: "class", value: "foo")
                    $0.attributes.add(name: "class", value: "baz")
                    $0.attributes.remove(name: "class", value: "baz")
                    $0.attributes.add(name: "style", value: "foo")

                    $0.attributes.add(name: "class", value: "bar")
                    $0.attributes.add(name: "style", value: "bar")

                    $0.attributes.remove(name: "style", value: "foo")
                    $0.attributes.add(name: "alignment", value: "left")
                    $0.attributes.remove(name: "alignment")
                }
        )

        let expectation = #"""
            <root enabled class="foo bar" style="bar"></root>
            """#

        let result = doc.render()
        #expect(result == expectation)
    }

    @Test
    func has() async throws {
        let tag = Root()
            .setAttribute(Enabled())
            .setAttribute(Class("foo"))

        #expect(tag.hasAttribute(name: "class") == true)
        #expect(tag.hasAttribute(Class.self) == true)

        #expect(tag.hasAttribute(name: "style") == false)
        #expect(tag.hasAttribute(Style.self) == false)

        #expect(tag.hasAttribute(name: "class", value: "foo") == true)
        #expect(tag.hasAttribute(Class("bar")) == false)

        #expect(tag.hasAttribute(name: "class", value: "foo") == true)
        #expect(tag.hasAttribute(Class("bar")) == false)
    }

    @Test
    func get() async throws {
        let tag = Root()
            .setAttribute(Enabled())
            .setAttribute(Class("foo"))

        #expect(tag.getAttribute(name: "class") == "foo")
        #expect(tag.getAttribute(Class.self) == "foo")

        #expect(tag.getAttribute(name: "style") == nil)
        #expect(tag.getAttribute(Style.self) == nil)
    }
}
