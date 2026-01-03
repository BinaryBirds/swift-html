import SGML
import Testing

@testable import HTML

@Suite
struct MetaTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Meta()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func colorScheme() async throws {
        let tag = Meta()
            .name(.colorScheme)
            .content("light dark")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta name="color-scheme" content="light dark">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func mediaColorScheme() async throws {
        let tag = Meta()
            .name(.themeColor)
            .content("#fff")
            .media("(prefers-color-scheme: light)")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta name="theme-color" content="#fff" media="(prefers-color-scheme: light)">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func appleStatusBarStyle() async throws {
        let tag = Meta()
            .name(.appleMobileWebAppStatusBarStyle)
            .content("default")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta name="apple-mobile-web-app-status-bar-style" content="default">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
