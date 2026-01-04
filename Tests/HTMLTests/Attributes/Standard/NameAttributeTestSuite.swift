import SGML
import Testing

@testable import HTML

@Suite
struct NameAttributeTestSuite {

    @Test
    func rendersNameValues() async throws {
        let cases: [(NameAttributeValue, String)] = [
            (.applicationName, "application-name"),
            (.author, "author"),
            (.description, "description"),
            (.generator, "generator"),
            (.keywords, "keywords"),
            (.viewport, "viewport"),
            (.robots, "robots"),
            (.colorScheme, "color-scheme"),
            (.themeColor, "theme-color"),
            (.appleMobileWebAppTitle, "apple-mobile-web-app-title"),
            (.appleMobileWebAppCapable, "apple-mobile-web-app-capable"),
            (
                .appleMobileWebAppStatusBarStyle,
                "apple-mobile-web-app-status-bar-style"
            ),
        ]

        for (value, raw) in cases {
            let tag = Button {}
                .name(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <button name></button>
                    """#
            }
            else {
                expectation = #"""
                    <button name="\#(raw)"></button>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
