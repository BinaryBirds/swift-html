//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2022. 03. 09..
//

import XCTest

@testable import SwiftHtml

final class TextareaTagTests: XCTestCase {

    func testDisabledTextarea() {

        let doc = Document {
            Textarea()
                .disabled()
        }
        XCTAssertEqual(
            DocumentRenderer(minify: true).render(doc),
            #"<textarea disabled></textarea>"#
        )
    }

}
