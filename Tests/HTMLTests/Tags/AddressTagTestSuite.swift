import SGML
import Testing

@testable import HTML

@Suite
struct AddressTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Address {
            Text("For more details, contact")
            //              <a href="mailto:js@example.com">John Smith</a>
            Text(".")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <address>For more details, contact.</address>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
