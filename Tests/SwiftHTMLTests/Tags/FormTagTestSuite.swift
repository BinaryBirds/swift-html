import Testing

@testable import SwiftHTML

@Suite
struct FormTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Form {

        }
        .target(.self)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <form target="_self"></form>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    //
    //    func testForm() {
    //        let doc = Document(.html) {
    //            Form {
    //                Section {
    //                    Label("Email address")
    //                        .for("email")
    //                    Input()
    //                        .type(.email)
    //                        .id("email")
    //                        .placeholder("Your email address")
    //                        .value("root@localhost.com")
    //                }
    //                Section {
    //                    Label("Password")
    //                        .for("password")
    //                    Input()
    //                        .type(.password)
    //                        .id("password")
    //                        .placeholder("Your password")
    //                }
    //                Section {
    //                    Input()
    //                        .type(.submit)
    //                        .value("Sign in")
    //                }
    //            }
    //            .enctype(.multipart)
    //            .method(.post)
    //            .action("/sign-in/")
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(doc),
    //            #"<!DOCTYPE html><form enctype="multipart/form-data" method="post" action="/sign-in/"><section><label for="email">Email address</label><input type="email" id="email" placeholder="Your email address" value="root@localhost.com"></section><section><label for="password">Password</label><input type="password" id="password" placeholder="Your password"></section><section><input type="submit" value="Sign in"></section></form>"#
    //        )

}
