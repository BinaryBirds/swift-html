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
        let doc = Document(.xml) {
            Root()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root></root>
                            """)
    }
    
    func testCustomAttribute() {
        let doc = Document(.xml) {
            Root()
                .attribute("foo", "bar")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root foo="bar"></root>
                            """)
    }
    
    func testCustomNilAttribute() {
        let doc = Document(.xml) {
            Root()
                .attribute("foo", nil)
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root></root>
                            """)
    }
}
