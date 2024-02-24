//
//  TagBuilderTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftSgml

final class BuilderTests: XCTestCase {
        
    func testOptional() {
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
    
    func testIf() {
        let condition: Bool = true
        let document = Document {
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
        
        let expectation = """
        <branch>
            <leaf>a</leaf>
            <leaf>c</leaf>
        </branch>
        """
        
        XCTAssertDocument(document, expectation)
    }

    func testElse() {
        let condition: Bool = false
        let document = Document {
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

        let expectation = """
        <branch>
            <leaf>b</leaf>
            <leaf>c</leaf>
        </branch>
        """
        
        XCTAssertDocument(document, expectation)
    }


    func testBlock1() {
        let document = Document {
            Branch {
                Leaf("Lorem")
            }
        }

        let expectation = """
        <branch>
            <leaf>Lorem</leaf>
        </branch>
        """
        XCTAssertDocument(document, expectation)
    }

    func testBlock2() {
        let document = Document {
            Branch {
                Leaf("foo")
                Leaf("bar")
            }
        }

        let expectation = """
        <branch>
            <leaf>foo</leaf>
            <leaf>bar</leaf>
        </branch>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testBlock3() {
        let document = Document {
            Branch {
                Leaf("Lorem")
                Branch {
                    Leaf("Dolor")
                }
            }
        }

        let expectation = """
        <branch>
            <leaf>Lorem</leaf>
            <branch>
                <leaf>Dolor</leaf>
            </branch>
        </branch>
        """
        XCTAssertDocument(document, expectation)
    }
    

    func testBlock4() {
        let document = Document {
            Branch {
                [   // NOTE: make this work without array...
                    Leaf("a")
                ]
                [
                    Leaf("b")
                ]
            }
        }
        
        let expectation = """
        <branch>
            <leaf>a</leaf>
            <leaf>b</leaf>
        </branch>
        """
        XCTAssertDocument(document, expectation)
    }


    func testArray1() {
        let document = Document {
            Branch {
                for i in 0..<3 {
                    Leaf(String(i + 1))
                }
            }
        }

        let expectation = """
        <branch>
            <leaf>1</leaf>
            <leaf>2</leaf>
            <leaf>3</leaf>
        </branch>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testArray2() {
        let values: [String] = ["a", "b", "c"]

        let document = Document {
            Branch {
                values.map { item -> [Element] in
                    [
                        Leaf(item),
                        Leaf(item)
                    ]
                }
            }
        }

        let expectation = """
        <branch>
            <leaf>a</leaf>
            <leaf>a</leaf>
            <leaf>b</leaf>
            <leaf>b</leaf>
            <leaf>c</leaf>
            <leaf>c</leaf>
        </branch>
        """
        XCTAssertDocument(document, expectation)
    }
}
