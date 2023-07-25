//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

import XCTest
@testable import SwiftHtml

final class BrTagTests: XCTestCase {

    func testBrInit() {
        
        let doc = Document {
            Br()
        }
        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<br>"#)
        XCTAssertEqual(DocumentRenderer(minify: true, selfClose: true).render(doc), #"<br />"#)
    }
}
