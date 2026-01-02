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
            <link href="./css/style.css" rel="stylesheet">
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
            <link href="./css/style.css" media="screen" rel="stylesheet">
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
            .crossorigin(.anonymous)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link crossorigin="anonymous" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" media="screen" rel="stylesheet">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
