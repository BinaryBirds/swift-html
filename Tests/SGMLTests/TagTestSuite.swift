import DOM
import SGML
import Testing

@Suite
struct TagTestSuite {

    @Test
    func name() async throws {

        struct Div: StandardTag {
            var attributes: AttributeStore = .init()
        }
        let div = Div()
        #expect(div.name == "div")

        struct Br: ShortTag {
            var attributes: AttributeStore = .init()
        }
        let br = Br()
        #expect(br.name == "br")
    }

    @Test
    func nameOverride() async throws {

        struct Div: StandardTag {
            var name = "DIV"
            var attributes: AttributeStore = .init()
        }
        let div = Div()
        #expect(div.name == "DIV")

        struct Br: ShortTag {
            var name = "BR"
            var attributes: AttributeStore = .init()
        }
        let br = Br()
        #expect(br.name == "BR")
    }
}
