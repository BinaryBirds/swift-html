import SGML
import Testing

@testable import HTML

@Suite
struct ScriptTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Script("console.log();")
            .type("application/javascript")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script type="application/javascript">console.log();</script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func shortTagVersion() async throws {
        let tag = Script()
            .src("main.js")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script src="main.js"></script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func integrity() async throws {
        let tag = Script()
            .src(
                "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            )
            .integrity(
                "sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            )
            .crossOrigin(.anonymous)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)

    }
}
