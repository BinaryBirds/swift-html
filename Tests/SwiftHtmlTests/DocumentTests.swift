//
//  DocumentTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class DocumentTests: XCTestCase {

    func testHtml() {
        let doc = Document(.html) {
            Html {}
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <!DOCTYPE html>
                            <html></html>
                            """)
    }

    func testXml() {
        final class Root: Tag {
            init(_ contents: String? = nil) {
                super.init(Node(type: .standard, name: "root", contents: contents))
            }
        }
        let doc = Document(.xml) {
            Root()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root></root>
                            """)
    }
}
