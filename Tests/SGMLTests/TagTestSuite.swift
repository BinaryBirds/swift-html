import DOM
import SGML
import Testing

@Suite
struct TagTestSuite {

    @Test
    func name() async throws {

        struct Div: StandardTag {
            var attributeStore: AttributeStore = .init()
        }
        let div = Div()
        #expect(div.name == "div")

        struct Br: ShortTag {
            var attributeStore: AttributeStore = .init()
        }
        let br = Br()
        #expect(br.name == "br")
    }

    @Test
    func nameOverride() async throws {

        struct Div: StandardTag {
            var name = "DIV"
            var attributeStore: AttributeStore = .init()
        }
        let div = Div()
        #expect(div.name == "DIV")

        struct Br: ShortTag {
            var name = "BR"
            var attributeStore: AttributeStore = .init()
        }
        let br = Br()
        #expect(br.name == "BR")
    }
}
