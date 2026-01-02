import SGML
import Testing

@testable import HTML

@Suite
struct TableTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Table("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <table></table>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func table() async throws {
        let tag = Table {
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

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <table>
                <thead>
                    <tr>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>a</td>
                        <td>b</td>
                        <td>c</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td>d</td>
                        <td>e</td>
                        <td>f</td>
                    </tr>
                </tfoot>
            </table>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func tableWithAttributes() async throws {
        let tag = Table {
            Thead {
                Tr {
                    Th("#")
                        .scope(.col)
                    Th("First")
                        .scope(.col)
                    Th("Last")
                        .scope(.col)
                    Th("Handle")
                        .scope(.col)
                }
            }
            Tbody {
                Tr {
                    Th("1")
                        .scope(.row)
                    Td("Mark")
                    Td("Otto")
                    Td("@mdo")
                }
                Tr {
                    Th("2")
                        .scope(.row)
                    Td("Jacob")
                    Td("Thornton")
                    Td("@fat")
                }
                Tr {
                    Th("3")
                        .scope(.row)
                    Td("Larry the Bird")
                        .colSpan(2)
                    Td("@twitter")
                }
            }
        }
        .class("table")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td colspan="2">Larry the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
