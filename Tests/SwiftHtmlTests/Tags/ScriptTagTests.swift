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
            Script ()
                .src("./js/main.js")
                .async()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <!DOCTYPE html>
                            <script src="./js/main.js" async></script>
                            """#)
    }
    
    func testIntegrity() {
        let doc = Document {
            Script ()
                .src("https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js")
                .integrity("sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl")
                .crossorigin(.anonymous)
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>"#, html)
    }
    
}
