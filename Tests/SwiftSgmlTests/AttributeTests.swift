//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 16..
//

import XCTest
@testable import SwiftSgml

final class AttributeTests: XCTestCase {

    func testSetAttributes() {

        let doc = Document {
            Leaf("example")
                .attribute("foo", "example")
                .setAttributes([
                    .init(key: "a", value: "foo"),
                    .init(key: "b", value: "bar"),
                    .init(key: "c", value: "baz"),
                ])
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <leaf a="foo" b="bar" c="baz">example</leaf>
                            """)
    }
    
    func testAddAttribute() {
        let doc = Document {
            Leaf("example")
                .setAttributes([
                    .init(key: "a", value: "foo"),
                    .init(key: "b", value: "bar"),
                    .init(key: "c", value: "baz"),
                ])
                .attribute("foo", "example")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <leaf a="foo" b="bar" c="baz" foo="example">example</leaf>
                            """)
    }
    
    func testDeleteAttribute() {
        let doc = Document {
            Leaf("example")
                .setAttributes([
                    .init(key: "a", value: "foo"),
                    .init(key: "b", value: "bar"),
                    .init(key: "c", value: "baz"),
                ])
                .deleteAttribute("b")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <leaf a="foo" c="baz">example</leaf>
                            """)
    }
    
    func testFlagAttribute() {
        let doc = Document {
            Leaf("example")
                .flagAttribute("foo")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <leaf foo>example</leaf>
                            """)
    }
    
    func testDeleteFlagAttribute() {
        let doc = Document {
            Leaf("example")
                .flagAttribute("foo")
                .deleteAttribute("foo")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <leaf>example</leaf>
                            """)
    }
    
    func testAttributeValue() {
        let key = "foo"
        let value = "example"
        let leaf = Leaf("example").attribute(key, value)
        XCTAssertEqual(leaf.node.value(key), value)
    }
}
