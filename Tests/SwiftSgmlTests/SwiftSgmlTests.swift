//
//  SwiftSgmlTests.swift
//  SwiftSgmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftSgml

final class SwiftSgmlTests: XCTestCase {

    func testXmlDocument() {
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
