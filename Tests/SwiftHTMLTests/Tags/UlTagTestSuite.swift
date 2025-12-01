import Testing

@testable import SwiftHTML

@Suite
struct UlTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Ul {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ul></ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
    // @Test
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
