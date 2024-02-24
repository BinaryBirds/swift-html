//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

import XCTest

@testable import SwiftHtml

final class H1TagTests: XCTestCase {

    func testInitWithContents() {
        let doc = Document {
            H1("Lorem ipsum")
        }
        XCTAssertEqual(
            DocumentRenderer(minify: true).render(doc),
            #"<h1>Lorem ipsum</h1>"#
        )
    }

    func testInitWithTag() {
        let doc = Document {
            H1 {
                A("foo")
                    .id("bar")
            }
        }
        XCTAssertEqual(
            DocumentRenderer(minify: true).render(doc),
            #"<h1><a id="bar">foo</a></h1>"#
        )
    }

    func testInitWithEmptyContents() {
        let doc = Document {
            H1()
                .setContents("foo")
        }
        XCTAssertEqual(
            DocumentRenderer(minify: true).render(doc),
            #"<h1>foo</h1>"#
        )
    }

    func testInitWithChildren() {
        let doc = Document {
            H1([
                A("foo")
            ])
        }
        XCTAssertEqual(
            DocumentRenderer(minify: true).render(doc),
            #"<h1><a>foo</a></h1>"#
        )
    }

}
