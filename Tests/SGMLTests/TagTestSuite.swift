import Testing

@testable import SGML

@Suite
struct TagTestSuite {

    @Test
    func name() async throws {

        struct Div: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }
        #expect(Div.name == "div")

        struct Br: ShortTag {
            var attributes: AttributeStore = .init()
        }
        #expect(Br.name == "br")
    }

    @Test
    func nameOverride() async throws {

        struct Div: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []

            static let name = "DIV"
        }
        #expect(Div.name == "DIV")

        struct Br: ShortTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []

            static let name = "BR"
        }
        #expect(Br.name == "BR")
    }
}
