import DOM
import SGML
import Testing

@Suite
struct TagTestSuite {

    @Test
    func name() async throws {

        struct Div: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
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
            var attributes: AttributeStore = .init()
            var children: [Element] = []

            var name = "DIV"
        }
        let div = Div()
        #expect(div.name == "DIV")

        struct Br: ShortTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []

            var name = "BR"
        }
        let br = Br()
        #expect(br.name == "BR")
    }
}
