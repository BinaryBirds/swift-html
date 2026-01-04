import SGML
import Testing

@testable import HTML

@Suite
struct EnterKeyHintAttributeTestSuite {

    @Test
    func rendersEnterKeyHintValues() async throws {
        let cases: [(EnterKeyHintAttributeValue, String)] = [
            (.enter, "enter"),
            (.done, "done"),
            (.go, "go"),
            (.next, "next"),
            (.previous, "previous"),
            (.search, "search"),
            (.send, "send"),
        ]

        for (value, raw) in cases {
            let tag = Input()
                .enterKeyHint(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <input enterkeyhint="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
