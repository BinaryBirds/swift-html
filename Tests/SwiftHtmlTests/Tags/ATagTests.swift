//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

import XCTest
@testable import SwiftHtml

final class ATagTests: XCTestCase {

    func testA() {
        
        let doc = Document(.unspecified) {
            A {
                P("Hello")
            }
            .href("world")
        }
        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<a href="world"><p>Hello</p></a>"#)
    }

}
