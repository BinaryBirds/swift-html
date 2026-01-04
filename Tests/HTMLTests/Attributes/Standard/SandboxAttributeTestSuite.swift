import SGML
import Testing

@testable import HTML

@Suite
struct SandboxAttributeTestSuite {

    @Test
    func rendersSandboxValues() async throws {
        let cases: [(SandboxAttributeValue, String?)] = [
            (.all, nil),
            (.allowForms, "allow-forms"),
            (.allowModals, "allow-modals"),
            (.allowOrientationLock, "allow-orientation-lock"),
            (.allowPointerLock, "allow-pointer-lock"),
            (.allowPopups, "allow-popups"),
            (.allowPopupsToEscapeSandbox, "allow-popups-to-escape-sandbox"),
            (.allowPresentation, "allow-presentation"),
            (.allowSameOrigin, "allow-same-origin"),
            (.allowScripts, "allow-scripts"),
            (.allowTopNavigation, "allow-top-navigation"),
            (
                .allowTopNavigationByUserActivation,
                "allow-top-navigation-by-user-activation"
            ),
        ]

        for (value, raw) in cases {
            let tag = Iframe {}
                .sandbox(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if let raw {
                expectation = #"""
                    <iframe sandbox="\#(raw)"></iframe>
                    """#
            }
            else {
                expectation = #"""
                    <iframe sandbox></iframe>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
