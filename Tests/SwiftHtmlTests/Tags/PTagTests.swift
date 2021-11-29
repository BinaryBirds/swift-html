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
        let tag = P("Hello, world!")
        
        XCTAssertEqual(DocumentRenderer(minify: true).render(Document(.unspecified) { tag } ), #"<p>Hello, world!</p>"#)
    }
    
    func testParagraphWithLink() {
        let tag = P {
            Text("lorem")
            A("Hello, world!")
                .href("/")
            Text("ipsum")
        }
        
        XCTAssertEqual(DocumentRenderer(minify: true).render(Document(.unspecified) { tag } ), #"<p>lorem<a href="/">Hello, world!</a>ipsum</p>"#)
    }
}
