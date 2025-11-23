import SGML
import Testing

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
        let renderer = Renderer()

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributes: .init(
                    [
                        Class("custom")
                    ]
                )
            )
        )

        let expectation = #"""
            <root class="custom"></root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func customNilValue() async throws {

        let renderer = Renderer()

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributes: .init(
                    [
                        Enabled()
                    ]
                )
            )
        )

        let expectation = #"""
            <root enabled></root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func mutation() async throws {

        let renderer = Renderer()

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributes: .init(
                    [
                        Enabled()
                    ]
                )
            )
            .modify {
                $0.attributes.addValue(Class("foo"))
                $0.attributes.addValue(Class("baz"))
                $0.attributes.removeValue(Class("baz"))
                $0.attributes.addValue(Style("foo"))

                // TODO: variadic generic support
                $0.attributes.addValue(Class("bar"))
                $0.attributes.addValue(Style("bar"))
                //                $0.attributes.addValues(
                //                    [
                //                        Class("bar"),
                //                        Style("bar"),
                //                    ]
                //                )

                $0.attributes.removeValue(Style("foo"))
                $0.attributes.addValue(Alignment("left"))
                $0.attributes.removeBy(Alignment.self)
            }
        )

        let expectation = #"""
            <root class="bar foo" style="bar" enabled></root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
