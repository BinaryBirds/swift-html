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
        let tag = Script()
            .src("./js/main.js")
            .async()
        
        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)

        XCTAssertEqual(res, #"<script src="./js/main.js" async></script>"#)
        
        let tag2 = Script(#"alert("Hello world!");"#).type("text/javascript")
        
        let res2 = tag2.html.trimmingCharacters(in: .whitespacesAndNewlines)

        XCTAssertEqual(res2, #"<script type="text/javascript">alert("Hello world!");</script>"#)
    }
    
}
