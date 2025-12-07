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
            <meta content="light dark" name="color-scheme">
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
            <meta content="#fff" media="(prefers-color-scheme: light)" name="theme-color">
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
            <meta content="default" name="apple-mobile-web-app-status-bar-style">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
