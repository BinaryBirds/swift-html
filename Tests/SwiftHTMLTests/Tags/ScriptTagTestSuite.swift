import Testing

@testable import SwiftHTML

@Suite
struct ScriptTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Script("console.log();")
            .type("text/javascript")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script type="text/javascript">console.log();</script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    func shortTagVersion() {
        let tag = Script()
            .src("main.js")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script src="main.js">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    //
    //    func testIntegrity() {
    //        let doc = Document {
    //            Script()
    //                .src(
    //                    "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    //                )
    //                .integrity(
    //                    "sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    //                )
    //                .crossorigin(.anonymous)
    //        }
    //        let html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            #"<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>"#,
    //            html
    //        )
    //    }
    //
}
