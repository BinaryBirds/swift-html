import Testing

@testable import SwiftHTML

@Suite
struct UlTagTestSuite {

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
    //    func testUl() {
    //        let doc = Document {
    //            Ul {
    //                Li("a")
    //                Li("b")
    //                Li {
    //                    P("c")
    //                }
    //            }
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            #"""
    //            <ul>
    //                <li>a</li>
    //                <li>b</li>
    //                <li>
    //                    <p>c</p>
    //                </li>
    //            </ul>
    //            """#
    //        )
    //    }
    //
}
