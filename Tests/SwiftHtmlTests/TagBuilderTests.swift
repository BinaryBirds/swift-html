//
//  TagBuilderTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftHtml

final class TagBuilderTests: XCTestCase {
        
    func testOptionalBuilder() {
        let condition: Bool = false
        let tag = Div {
            if condition {
                H1("a")
            }
            P("b")
        }
        
        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(res, "<div>\n<p>b</p>\n</div>")
    }
    
    func testEitherFirstBuilder() {
        let condition: Bool = true
        let tag = Div {
            if condition {
                H1("a")
            }
            else {
                H2("b")
            }
            P("c")
        }
        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(res, "<div>\n<h1>a</h1>\n<p>c</p>\n</div>")
    }
    
    func testEitherSecondBuilder() {
        let condition: Bool = false
        let tag = Div {
            if condition {
                H1("a")
            }
            else {
                H1("b")
            }
            P("c")
        }
        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(res, "<div>\n<h1>b</h1>\n<p>c</p>\n</div>")
    }
    
    func testArrayBuilder() {
        let tag = Div {
            for i in 0..<3 {
                P(String(i + 1))
            }
        }
        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(res, "<div>\n<p>1</p>\n<p>2</p>\n<p>3</p>\n</div>")
    }
}

