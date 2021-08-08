//
//  InputTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class InputTagTests: XCTestCase {

    func testCheckedInput() {
        let tag = Input()
            .type(.checkbox)
            .checked()

        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(res, #"<input type="checkbox" checked>"#)
    }
    
    func testUncheckedInput() {
        let tag = Input()
            .type(.checkbox)
            // first add checked attribute
            .checked()
            // this should remove the checked attribute
            .checked(false)

        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(res, #"<input type="checkbox">"#)
    }
    
   
    
}
