//
//  TagBuilderTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftSgml

final class TagBuilderTests: XCTestCase {
        
    func testOptionalBuilder() {
        let condition: Bool = false
        let document = Document {
            Root {
                Branch {
                    if condition {
                        Leaf("a")
                    }
                    Leaf("b")
                }
            }
        }
        
        let expectation = """
        <root>
            <branch>
                <leaf>b</leaf>
            </branch>
        </root>
        """
        
        XCTAssertDocument(document, expectation)
    }
//    
//    func testEitherFirstBuilder() {
//        let condition: Bool = true
//        let doc = Document {
//            Branch {
//                if condition {
//                    Leaf("a")
//                }
//                else {
//                    Leaf("b")
//                }
//                Leaf("c")
//            }
//        }
//        
//        let html = """
//        <branch>
//            <leaf>a</leaf>
//            <leaf>c</leaf>
//        </branch>
//        """
//        
//        assert(doc: doc, html: html)
//    }
//
//    func testEitherSecondBuilder() {
//        let condition: Bool = false
//        let doc = Document {
//            Branch {
//                if condition {
//                    Leaf("a")
//                }
//                else {
//                    Leaf("b")
//                }
//                Leaf("c")
//            }
//        }
//
//        let html = """
//        <branch>
//            <leaf>b</leaf>
//            <leaf>c</leaf>
//        </branch>
//        """
//        
//        assert(doc: doc, html: html)
//    }
//
//    func testArrayBuilder() {
//        let doc = Document {
//            Branch {
//                for i in 0..<3 {
//                    Leaf(String(i + 1))
//                }
//            }
//        }
//
//        let html = """
//        <branch>
//            <leaf>1</leaf>
//            <leaf>2</leaf>
//            <leaf>3</leaf>
//        </branch>
//        """
//        assert(doc: doc, html: html)
//    }
//
//    func testGroupBuilder() {
//        let doc = Document {
//            Branch {
//                Leaf("foo")
//                Leaf("bar")
//            }
//        }
//
//        let html = """
//        <branch>
//            <leaf>foo</leaf>
//            <leaf>bar</leaf>
//        </branch>
//        """
//        assert(doc: doc, html: html)
//    }
//
//    func testSingleGroupBuilder() {
//        let doc = Document {
//            Branch {
//                [
//                    Leaf("Lorem")
//                ]
//            }
//        }
//
//        let html = """
//        <branch>
//            <leaf>Lorem</leaf>
//        </branch>
//        """
//        assert(doc: doc, html: html)
//    }
//
//    func testMultiGroupBuilder() {
//        let doc = Document {
//            Branch {
//                [
//                    Leaf("Lorem"),
//                    Leaf("Dolor"),
//                ]
//            }
//        }
//
//        let html = """
//        <branch>
//            <leaf>Lorem</leaf>
//            <leaf>Dolor</leaf>
//        </branch>
//        """
//        assert(doc: doc, html: html)
//    }
//
//    func testGroupTagBuilderAndRenderer() {
//        let doc = Document {
//            Branch {
//                GroupTag {
//                    Leaf("a")
//                    Leaf("b")
//                }
//            }
//        }
//        
//        let html = """
//        <branch>
//            <leaf>a</leaf>
//            <leaf>b</leaf>
//        </branch>
//        """
//        assert(doc: doc, html: html)
//    }
//
//    func testMultiGroupTagBuilderAndRenderer() {
//        let values: [String] = ["a", "b", "c"]
//
//        let doc = Document {
//            Branch {
//                values.map { item -> Tag in
//                    GroupTag {
//                        Leaf(item)
//                        Leaf(item)
//                    }
//                }
//            }
//        }
//
//        let html = """
//        <branch>
//            <leaf>a</leaf>
//            <leaf>a</leaf>
//            <leaf>b</leaf>
//            <leaf>b</leaf>
//            <leaf>c</leaf>
//            <leaf>c</leaf>
//        </branch>
//        """
//        assert(doc: doc, html: html)
//    }
}
