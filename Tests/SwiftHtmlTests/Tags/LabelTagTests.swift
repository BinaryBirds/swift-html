//
//  LabelTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest

@testable import SwiftHtml

final class LabelTagTests: XCTestCase {

    func testLabelContents() {
        let doc = Document {
            Label("foo")
        }

        XCTAssertEqual(
            DocumentRenderer().render(doc),
            #"""
            <label>foo</label>
            """#
        )
    }

    func testLabelChildrenWithContents() {
        let isRequired = true
        let doc = Document {
            Label {
                Span("(bar)").class("more")
                if isRequired {
                    Span("*").class("required")
                }
            }
            .setContents("foo")
        }

        XCTAssertEqual(
            DocumentRenderer().render(doc),
            #"""
            <label>foo
                <span class="more">(bar)</span>
                <span class="required">*</span>
            </label>
            """#
        )
    }

}
