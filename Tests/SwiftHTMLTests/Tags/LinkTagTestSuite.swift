import SGML
import SwiftHTML
import Testing

@Suite
struct LinkTagTestSuite {

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
    //    func testMediaQuery() {
    //        let doc = Document {
    //            Link(rel: .appleTouchStartupImage)
    //                .media([
    //                    .screen,
    //                    .deviceWidth(px: 320),
    //                    .deviceHeight(px: 568),
    //                    .webkitDevicePixelRatio(2),
    //                    .orientation(.portrait),
    //                ])
    //                .href("/img/apple/splash/1136x640.png")
    //        }
    //        var html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            #"<link rel="apple-touch-startup-image" media="screen and (device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)" href="/img/apple/splash/1136x640.png">"#,
    //            html
    //        )
    //
    //        html = DocumentRenderer(minify: true, selfClose: true).render(doc)
    //        XCTAssertEqual(
    //            #"<link rel="apple-touch-startup-image" media="screen and (device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)" href="/img/apple/splash/1136x640.png" />"#,
    //            html
    //        )
    //    }
    //
    //    func testIntegrity() {
    //        let doc = Document {
    //            Link(rel: .stylesheet)
    //                .href(
    //                    "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    //                )
    //                .integrity(
    //                    "sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    //                )
    //                .crossorigin(.anonymous)
    //
    //        }
    //        var html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            #"<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">"#,
    //            html
    //        )
    //
    //        html = DocumentRenderer(minify: true, selfClose: true).render(doc)
    //        XCTAssertEqual(
    //            #"<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />"#,
    //            html
    //        )
    //    }
    //
}
