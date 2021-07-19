//
//  SwiftHtmlTests.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftHtml

final class SwiftCssTests: XCTestCase {
    
    func testHtml001() {
        
        let doc = Document(.html5) {
            Html {
                Head {
                    Meta()
                        .name("og:title")
                        .content("My website")
                    Link()
                        .rel("stylesheet")
                        .href("./css/style.css")
                        
                }
                Body {
                    Div {
                        H1("Lorem ipsum")
                        P("Dolor sit amet")
                        A("Hello Swift HTML DSL!").href("https://swift.org")
                    }
                }
            }
        }

        print(doc.html)
        XCTAssertTrue(true)
    }
}
