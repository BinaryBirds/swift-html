import SGML
import Testing

@testable import HTML

@Suite
struct LinkTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Link(rel: .stylesheet)
            .href("./css/style.css")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" href="./css/style.css">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func mediaQuery() async throws {
        let tag = Link(rel: .stylesheet)
            .media("screen")
            .href("./css/style.css")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" media="screen" href="./css/style.css">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func misc() async throws {
        let tag = Link(rel: .stylesheet)
            .media("screen")
            .href(
                "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            )
            .integrity(
                "sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            )
            .crossOrigin(.anonymous)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" media="screen" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
