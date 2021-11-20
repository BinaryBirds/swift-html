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
        
        XCTAssertEqual(DocumentRenderer(minify: true).render(Document(.html) { tag } ), "<!DOCTYPE html><p>Hello world!</p>")
    } 
}
