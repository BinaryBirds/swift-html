//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 16..
//

import XCTest
@testable import SwiftSgml

final class AttributeTests: XCTestCase {

    func testCustomAttribute() {
        let document = Document(.xml) {
            Root()
                .add(attribute: Custom(key: "foo", value: "bar"))
        }

        let expectation = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root foo="bar"></root>
        """
        XCTAssertDocument(document, expectation)
    }

    func testCustomNilAttribute() {
        let document = Document(.xml) {
            Root()
                .add(attribute: Custom(key: "foo"))
        }

        let expectation = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root foo></root>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testCustomEmptyAttribute() {
        let document = Document(.xml) {
            Root()
                .add(attribute: Custom(key: "foo", value: ""))
        }

        let expectation = """
        <?xml version="1.0" encoding="utf-8" ?>
        <root foo=""></root>
        """
        XCTAssertDocument(document, expectation)
    }

    func testFlagAttribute() {
        let document = Document() {
            Root {
                Custom(key: "foo", value: nil)
            }
        }

        let expectation = """
        <root foo></root>
        """
        XCTAssertDocument(document, expectation)
    }
    
    // MARK: -
    
//    func testSetAttributes() {
//
//        let doc = Document {
//            Leaf("example")
//                .attribute("foo", "example")
//                .setAttributes([
//                    .init(key: "a", value: "foo"),
//                    .init(key: "b", value: "bar"),
//                    .init(key: "c", value: "baz"),
//                ])
//        }
//
//        let html = """
//                            <leaf a="foo" b="bar" c="baz">example</leaf>
//                            """
//    }
//    
//    func testAddAttribute() {
//        let doc = Document {
//            Leaf("example")
//                .setAttributes([
//                    .init(key: "a", value: "foo"),
//                    .init(key: "b", value: "bar"),
//                    .init(key: "c", value: "baz"),
//                ])
//                .attribute("foo", "example")
//        }
//
//        let html = """
//                            <leaf a="foo" b="bar" c="baz" foo="example">example</leaf>
//                            """
//    }
//    
//    func testDeleteAttribute() {
//        let doc = Document {
//            Leaf("example")
//                .setAttributes([
//                    .init(key: "a", value: "foo"),
//                    .init(key: "b", value: "bar"),
//                    .init(key: "c", value: "baz"),
//                ])
//                .deleteAttribute("b")
//        }
//
//        let html = """
//                            <leaf a="foo" c="baz">example</leaf>
//                            """
//    }
//    
//    func testFlagAttribute() {
//        let doc = Document {
//            Leaf("example")
//                .flagAttribute("foo")
//        }
//
//        let html = """
//                            <leaf foo>example</leaf>
//                            """
//    }
//    
//    func testDeleteFlagAttribute() {
//        let doc = Document {
//            Leaf("example")
//                .flagAttribute("foo")
//                .deleteAttribute("foo")
//        }
//
//        let html = """
//                            <leaf>example</leaf>
//                            """
//    }
}
