//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml
import XCTest

func XCTAssertDocument(
    _ document: Document,
    _ expectation: String,
    file: StaticString = #filePath,
    line: UInt = #line
) {
    let renderer = DocumentRenderer()
    let html = renderer.render(document)
    XCTAssertEqual(html, expectation.minify(), file: file, line: line)
}
