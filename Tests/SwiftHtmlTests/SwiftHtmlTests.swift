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
                    Title("Hello Swift DSL")
                    Meta()
                        .name("viewport")
                        .content("width=device-width, initial-scale=1")
                    Link()
                        .rel("stylesheet")
                        .href("./css/style.css")
                }
                Body {
                    Main {
                        Div {
                            Section {
                                Img()
                                    .src("./images/swift.png")
                                    .title("Swift Logo")
                                H1("Lorem ipsum")
                                    .class("red")
                                P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium leo eu euismod porta.")
                                    .class(["green", "blue"])
                                    .spellcheck(false)
                            }
                            A("Hello Swift HTML DSL!")
                                .href("https://swift.org")
                                .target(.blank)
                                .download()
                            Abbr("WHO")
                                .title("World Health Organization")
                        }
                    }
                    .class("container")

                    Script()
                        .src("./javascript/main.js")
                }
            }
        }
        print(doc.html)
        XCTAssertTrue(true)
    }
}
