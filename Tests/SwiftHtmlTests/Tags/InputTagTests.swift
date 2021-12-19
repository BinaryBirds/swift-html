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
        let doc = Document {
            Input()
                .type(.checkbox)
                .checked()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <input type="checkbox" checked>
                            """)
    }
    
    func testUncheckedInput() {
        let doc = Document {
            Input()
                .type(.checkbox)
                // first add checked attribute
                .checked()
                // this should remove the checked attribute
                .checked(false)
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <input type="checkbox">
                            """)
    }
    
    func testKey() {
        let doc = Document {
            Input()
                .type(.text)
                .key("email")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <input type="text" id="email" name="email">
                            """)
    }
   
    
}
