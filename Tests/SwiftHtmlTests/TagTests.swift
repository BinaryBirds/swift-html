import XCTest
@testable import SwiftHtml

final class TagTests: XCTestCase {
        
    func testUl() {
        let doc = Ul {
            Li("a")
            Li("b")
            Li {
                P("c")
            }
        }
        print(doc.html)
        XCTAssertTrue(true)
    }
    
    func testTable() {
        let doc = Table {
            Thead {
                Tr {
                    Th("1")
                    Th("2")
                    Th("3")
                }
            }
            Tbody {
                Tr {
                    Td("a")
                    Td("b")
                    Td("c")
                }
            }
            Tfoot {
                Tr {
                    Td("d")
                    Td("e")
                    Td("f")
                }
            }
        }
        print(doc.html)
        XCTAssertTrue(true)
    }
    
    func testForm() {
        let doc = Form {
            Section {
                Label("Email address")
                    .for("email")
                Input()
                    .type(.email)
                    .id("email")
                    .placeholder("Your email address")
                    .value("root@localhost.com")
            }
            Section {
                Label("Password")
                    .for("password")
                Input()
                    .type(.password)
                    .id("password")
                    .placeholder("Your password")
            }
            Section {
                Input()
                    .type(.submit)
                    .value("Sign in")
            }
        }
        .enctype(.multipart)
        .method(.post)
        .action("/sign-in/")

        print(doc.html)
        XCTAssertTrue(true)
    }
    
    func testScript() {
        let tag = Script()
            .src("./js/main.js")
            .async()
        
        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)

        XCTAssertEqual(res, #"<script src="./js/main.js" async>"#)
        
        let tag2 = Script(#"alert("Hello world!");"#).type("text/javascript")
        
        let res2 = tag2.html.trimmingCharacters(in: .whitespacesAndNewlines)

        XCTAssertEqual(res2, #"<script type="text/javascript">alert("Hello world!");</script>"#)
    }
}
