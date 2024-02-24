//
//  SwiftSgmlTests.swift
//  SwiftSgmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftSgml

final class DocumentTests: XCTestCase {

    func testXml() {
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
