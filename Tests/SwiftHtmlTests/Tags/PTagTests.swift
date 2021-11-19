//
//  PTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class PTagTests: XCTestCase {

    func testParagraph() {
        let tag = P("Hello world!")
        
//        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
//
//        XCTAssertEqual(res, "<p>Hello world!</p>")
    } 
}
