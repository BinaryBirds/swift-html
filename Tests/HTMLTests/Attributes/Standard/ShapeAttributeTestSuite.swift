import SGML
import Testing

@testable import HTML

@Suite
struct ShapeAttributeTestSuite {

    @Test
    func rendersShapeValues() async throws {
        let cases: [(ShapeAttributeValue, String)] = [
            (.default, "default"),
            (.rect, "rect"),
            (.circle, "circle"),
            (.poly, "poly"),
        ]

        for (value, raw) in cases {
            let tag = Area()
                .shape(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <area shape>
                    """#
            }
            else {
                expectation = #"""
                    <area shape="\#(raw)">
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
