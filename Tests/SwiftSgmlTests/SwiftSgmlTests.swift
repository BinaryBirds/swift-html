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

        let html = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root></root>
        """
        assert(doc: doc, html: html)
    }

    func testCustomAttribute() {
        let doc = Document(.xml) {
            Root()
                .attribute("foo", "bar")
        }

        let html = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root foo="bar"></root>
        """
        assert(doc: doc, html: html)
    }

    func testCustomNilAttribute() {
        let doc = Document(.xml) {
            Root()
                .attribute("foo", nil)
        }

        let html = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root></root>
        """
        assert(doc: doc, html: html)
    }

    func testFlagAttribute() {
        let doc = Document() {
            Root()
                .flagAttribute("foo")
        }

        let html = """
        <root foo></root>
        """
        assert(doc: doc, html: html)
    }
}
