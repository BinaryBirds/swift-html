//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

import XCTest

@testable import SwiftHtml

final class CommentTagTests: XCTestCase {

    func testBrInit() {

        let doc = Document {
            Comment("hello world")
        }
        XCTAssertEqual(
            DocumentRenderer(minify: true).render(doc),
            #"<!-- hello world -->"#
        )
    }

}
