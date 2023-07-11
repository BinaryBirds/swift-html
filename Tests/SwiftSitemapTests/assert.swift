//
//  assert.swift
//  SwiftSgmlTests
//
//  Created by Tibor Bodecs on 2023. 04. 01..
//

import SwiftSgml
import XCTest

func assert(doc: Document, html: String) {
    let renderer = DocumentRenderer(minify: true)
    let expectation = html
        .replacingOccurrences(of: "    ", with: "")
        .replacingOccurrences(of: "\n", with: "")
    
    XCTAssertEqual(renderer.render(doc), expectation)
}
