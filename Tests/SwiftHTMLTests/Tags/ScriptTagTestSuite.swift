import SGML
import SwiftHTML
import Testing

@Suite
struct ScriptTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = H1("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <h1>Lorem ipsum</h1>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
    //
    //    func testScript() {
    //        let doc = Document(.html) {
    //            Script()
    //                .src("./js/main.js")
    //                .async()
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            #"""
    //            <!DOCTYPE html>
    //            <script src="./js/main.js" async></script>
    //            """#
    //        )
    //    }
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
