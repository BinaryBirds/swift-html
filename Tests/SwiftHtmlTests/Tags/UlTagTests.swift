//
//  UlTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class UlTagTests: XCTestCase {

    func testUl() {
        let doc = Document {
            Ul {
                Li("a")
                Li("b")
                Li {
                    P("c")
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <ul>
                                <li>a</li>
                                <li>b</li>
                                <li>
                                    <p>c</p>
                                </li>
                            </ul>
                            """#)
    }
   
    
}
