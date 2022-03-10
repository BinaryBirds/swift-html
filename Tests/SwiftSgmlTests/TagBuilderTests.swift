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
        let doc = Document {
            Branch {
                if condition {
                    Leaf("a")
                }
                Leaf("b")
            }
        }
        
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>b</leaf>
                            </branch>
                            """)
    }
    
    func testEitherFirstBuilder() {
        let condition: Bool = true
        let doc = Document {
            Branch {
                if condition {
                    Leaf("a")
                }
                else {
                    Leaf("b")
                }
                Leaf("c")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>a</leaf>
                                <leaf>c</leaf>
                            </branch>
                            """)
        
    }
    
    func testEitherSecondBuilder() {
        let condition: Bool = false
        let doc = Document {
            Branch {
                if condition {
                    Leaf("a")
                }
                else {
                    Leaf("b")
                }
                Leaf("c")
            }
        }
        
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>b</leaf>
                                <leaf>c</leaf>
                            </branch>
                            """)
    }
    
    func testArrayBuilder() {
        let doc = Document {
            Branch {
                for i in 0..<3 {
                    Leaf(String(i + 1))
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>1</leaf>
                                <leaf>2</leaf>
                                <leaf>3</leaf>
                            </branch>
                            """)
    }
    
    func testGroupBuilder() {
        let doc = Document {
            Branch {
                Leaf("Lorem ipsum")
                Leaf("Dolor sit amet")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>Lorem ipsum</leaf>
                                <leaf>Dolor sit amet</leaf>
                            </branch>
                            """)
    }
    
    func testSingleGroupBuilder() {
        let doc = Document {
            Branch {
                [
                    Leaf("Lorem ipsum")
                ]
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>Lorem ipsum</leaf>
                            </branch>
                            """)
    }
    
    func testMultiGroupBuilder() {
        let doc = Document {
            Branch {
                [
                    Leaf("Lorem ipsum"),
                    Leaf("Dolor sit amet"),
                ]
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>Lorem ipsum</leaf>
                                <leaf>Dolor sit amet</leaf>
                            </branch>
                            """)
    }
    
    func testGroupTagBuilderAndRenderer() {
        let doc = Document {
            Branch {
                GroupTag {
                    Leaf("a")
                    Leaf("b")
                }
            }
        }
        // TODO: needs better support group tag render support...
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>a</leaf>
                                <leaf>b</leaf>
                            </branch>
                            """)
    }
    
    func testMultiGroupTagBuilderAndRenderer() {
        let values: [String] = ["a", "b", "c"]
        
        let doc = Document {
            Branch {
                values.map { item -> Tag in
                    GroupTag {
                        Leaf(item)
                        Leaf(item)
                    }
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>a</leaf>
                                <leaf>a</leaf>
                                <leaf>b</leaf>
                                <leaf>b</leaf>
                                <leaf>c</leaf>
                                <leaf>c</leaf>
                            </branch>
                            """)
    }    
}

