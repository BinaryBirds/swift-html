//
//  TagBuilderTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftHtml

final class TagBuilderTests: XCTestCase {
        
    func testOptionalBuilder() {
        let condition: Bool = false
        let doc = Document {
            Div {
                if condition {
                    H1("a")
                }
                P("b")
            }
        }
        
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <div>
                                <p>b</p>
                            </div>
                            """)
    }
    
    func testEitherFirstBuilder() {
        let condition: Bool = true
        let doc = Document {
            Div {
                if condition {
                    H1("a")
                }
                else {
                    H2("b")
                }
                P("c")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <div>
                                <h1>a</h1>
                                <p>c</p>
                            </div>
                            """)
        
    }
    
    func testEitherSecondBuilder() {
        let condition: Bool = false
        let doc = Document {
            Div {
                if condition {
                    H1("a")
                }
                else {
                    H1("b")
                }
                P("c")
            }
        }
        
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <div>
                                <h1>b</h1>
                                <p>c</p>
                            </div>
                            """)
    }
    
    func testArrayBuilder() {
        let doc = Document {
            Div {
                for i in 0..<3 {
                    P(String(i + 1))
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <div>
                                <p>1</p>
                                <p>2</p>
                                <p>3</p>
                            </div>
                            """)
    }
    
    func testGroupBuilder() {
        let doc = Document {
            Main {
                H1("Lorem ipsum")
                P("Dolor sit amet")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <main>
                                <h1>Lorem ipsum</h1>
                                <p>Dolor sit amet</p>
                            </main>
                            """)
    }
    
    
}

