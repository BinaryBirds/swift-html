import Testing

@testable import HTML

@Suite
struct AreaTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Area()
            .shape(.rect)
            .alt("foo")
            .coords(0, 0, 82, 126)
            .download("foo.jpg")
            .ping("http://localhost:8080/ping")
            .referrerPolicy(.noReferrer)
        //            .check(false) {
        //                $0.ping("foo")
        //            } else: {
        //                $0.ping("bar")
        //            }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area alt="foo" coords="0,0,82,126" download="foo.jpg" ping="http://localhost:8080/ping" referrerpolicy="no-referrer" shape="rect">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
