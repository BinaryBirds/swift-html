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
//        print(doc.html)
        XCTAssertTrue(true)
    }
    
}
