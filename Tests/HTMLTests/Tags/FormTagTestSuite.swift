import Testing

@testable import HTML

@Suite
struct FormTagTestSuite {

    @Test
    func initialization() async throws {
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

    @Test
    func complex() async throws {
        let tag = Form {
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

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <form action="/sign-in/" enctype="multipart/form-data" method="post">
                <section>
                    <label for="email">Email address</label>
                    <input id="email" placeholder="Your email address" type="email" value="root@localhost.com">
                </section>
                <section>
                    <label for="password">Password</label>
                    <input id="password" placeholder="Your password" type="password">
                </section>
                <section>
                    <input type="submit" value="Sign in">
                </section>
            </form>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
