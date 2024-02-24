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
        let document = Document(.xml) {
            Root()
        }

        let expectation = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root></root>
        """
        XCTAssertDocument(document, expectation)
    }

    
}
