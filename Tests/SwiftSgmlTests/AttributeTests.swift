//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2022. 02. 16..
//

import XCTest

@testable import SwiftSgml

final class AttributeTests: XCTestCase {

    func testCustom() {
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

    func testCustomNilValue() {
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

    func testCustomEmptyValue() {
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

    func testFlag() {
        let document = Document {
            Root {
                Flag("foo")
            }
        }

        let expectation = """
            <root foo></root>
            """
        XCTAssertDocument(document, expectation)
    }

    // MARK: -

    func testSet() {
        let document = Document {
            Leaf("example")
                .add(attribute: Custom(key: "foo", value: "example"))
                .set(attributes: [
                    Custom(key: "a", value: "foo"),
                    Custom(key: "b", value: "bar"),
                    Custom(key: "c", value: "baz"),
                ])
        }

        let expectation = """
                <leaf a="foo" b="bar" c="baz">example</leaf>
            """
        XCTAssertDocument(document, expectation)
    }

    func testAdd() {
        let document = Document {
            Leaf("example")
                .set(attributes: [
                    Custom(key: "a", value: "foo"),
                    Custom(key: "b", value: "bar"),
                    Custom(key: "c", value: "baz"),
                ])
                .add(attribute: Custom(key: "foo", value: "example"))
        }

        let expectation = """
                <leaf a="foo" b="bar" c="baz" foo="example">example</leaf>
            """
        XCTAssertDocument(document, expectation)
    }

    func testRemove() {
        let document = Document {
            Leaf("example")
                .set(attributes: [
                    Custom(key: "a", value: "foo"),
                    Custom(key: "b", value: "bar"),
                    Custom(key: "c", value: "baz"),
                ])
                .remove(attributeByKey: "b")
        }

        let expectation = """
            <leaf a="foo" c="baz">example</leaf>
            """
        XCTAssertDocument(document, expectation)
    }

    func testAddFlag() {
        let document = Document {
            Leaf("example")
                .add(attribute: Flag("foo"))
        }

        let expectation = """
            <leaf foo>example</leaf>
            """
        XCTAssertDocument(document, expectation)
    }

    func testRemoveFlag() {
        let document = Document {
            Leaf("example")
                .add(attribute: Flag("foo"))
                .remove(attributeByKey: "foo")
        }

        let expectation = """
                <leaf>example</leaf>
            """
        XCTAssertDocument(document, expectation)
    }
}
