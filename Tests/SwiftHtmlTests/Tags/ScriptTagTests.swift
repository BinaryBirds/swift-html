//
//  ScriptTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class ScriptTagTests: XCTestCase {

    func testScript() {
        let doc = Document(.html) {
            Script()
                .src("./js/main.js")
                .async()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <!DOCTYPE html>
                            <script src="./js/main.js" async></script>
                            """#)
    }
    
}
