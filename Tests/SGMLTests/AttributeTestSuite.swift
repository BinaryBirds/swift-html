import SGML
import Testing

@Suite
struct AttributeTestSuite {

    @Test
    func custom() async throws {
        let renderer = Renderer()

        struct Root: StandardTag {
            var attributes: AttributeStore
        }

        struct Class: Attribute {
            static let name = "class"
            var value: String?
        }

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributes: .init(
                    [
                        Class(value: "custom")
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

        struct Root: StandardTag {
            var attributes: AttributeStore
        }

        struct Enabled: Attribute {
            static let name = "enabled"
            let value: String? = nil
        }

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

        struct Root: StandardTag {
            var attributes: AttributeStore
        }

        struct Class: Attribute {
            static let name = "class"
            var value: String?
        }

        struct Style: Attribute {
            static let name = "style"
            var value: String?
        }

        struct Enabled: Attribute {
            static let name = "enabled"
            let value: String? = nil
        }

        struct Alignment: Attribute {
            static let name = "align"
            let value: String?
        }

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
                $0.attributes.add(
                    attribute: Class(
                        value: "foo"
                    )
                )
                $0.attributes.add(
                    attribute: Class(
                        value: "bar"
                    )
                )
                $0.attributes.add(
                    attribute: Class(
                        value: "baz"
                    )
                )
                $0.attributes.removeValueBy(
                    attribute: Class(
                        value: "baz"
                    )
                )
                $0.attributes.add(
                    attribute: Style(
                        value: "foo"
                    )
                )
                $0.attributes.set(
                    attribute: Style(
                        value: "bar"
                    )
                )
                $0.attributes.add(
                    attribute: Alignment(
                        value: "left"
                    )
                )
                $0.attributes.removeAttributeBy(
                    attribute: Alignment(value: nil)
                )
            }
        )

        let expectation = #"""
            <root class="bar foo" style="bar" enabled></root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
