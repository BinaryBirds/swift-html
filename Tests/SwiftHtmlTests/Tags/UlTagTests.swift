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
        let doc = Document(.html) {
            Ul {
                Li("a")
                Li("b")
                Li {
                    P("c")
                }
            }
        }
        print(DocumentRenderer().render(doc))
        XCTAssertTrue(true)
    }
   
    
}
