import SGML
import Testing

@testable import HTML

@Suite
struct DateTimeAttributeTestSuite {

    @Test
    func rendersDateTimeValue() async throws {
        let tag = Del {}
            .dateTime("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <del datetime="value"></del>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
