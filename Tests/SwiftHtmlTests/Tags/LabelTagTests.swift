//
//  LabelTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class LabelTagTests: XCTestCase {

    func testLabelChildren() {
        let isRequired = true
        let tag = Label("foo") {
//            Span("(bar)").class("more")
//            if isRequired {
//                Span("*").class("required")
//            }
        }
                
//        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
//        XCTAssertEqual(res, #"""
//                            <label>foo
//                            <span class="more">(bar)</span>
//                            <span class="required">*</span>
//                            </label>
//                            """#)
    }
   
    
}
