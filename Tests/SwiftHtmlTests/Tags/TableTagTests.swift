//
//  TableTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class TableTagTests: XCTestCase {

    func testTable() {
        let doc = Document(.html) {
            Table {
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
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <!DOCTYPE html>
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
                            """#)
        
        
    }
    
}
