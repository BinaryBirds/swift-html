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
        let doc = Document(.unspecified) {
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
        let doc = Document(.unspecified) {
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
        let doc = Document(.unspecified) {
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
        let doc = Document(.unspecified) {
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
}

