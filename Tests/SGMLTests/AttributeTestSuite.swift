import SGML
import Testing

@Suite
struct AttributeTestSuite {

    @Test
    func custom() async throws {
        let renderer = Renderer()

        struct Root: StandardTag {
            var attributeStore: AttributeStore
        }

        struct Class: Attribute {
            let name = "class"
            var value: String?
        }

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributeStore: .init(
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
            var attributeStore: AttributeStore
        }

        struct Enabled: Attribute {
            let name = "enabled"
            let value: String? = nil
        }

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributeStore: .init(
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

        struct Root: StandardTag, Mutable {
            var attributeStore: AttributeStore
        }

        struct Class: Attribute {
            let name = "class"
            var value: String?
        }

        struct Style: Attribute {
            let name = "style"
            var value: String?
        }

        struct Enabled: Attribute {
            let name = "enabled"
            let value: String? = nil
        }

        struct Alignment: Attribute {
            let name = "align"
            let value: String?
        }

        let doc = Document(
            type: .unspecified,
            root: Root(
                attributeStore: .init(
                    [
                        Enabled()
                    ]
                )
            )
            .modify {
                $0.attributeStore.add(
                    attribute: Class(
                        value: "foo"
                    )
                )
                $0.attributeStore.add(
                    attribute: Class(
                        value: "bar"
                    )
                )
                $0.attributeStore.add(
                    attribute: Class(
                        value: "baz"
                    )
                )
                $0.attributeStore.removeValue(
                    attribute: Class(
                        value: "baz"
                    )
                )
                $0.attributeStore.add(
                    attribute: Style(
                        value: "foo"
                    )
                )
                $0.attributeStore.set(
                    attribute: Style(
                        value: "bar"
                    )
                )
                $0.attributeStore.add(
                    attribute: Alignment(
                        value: "left"
                    )
                )
                $0.attributeStore.remove(
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
