//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 01. 21..
//

import Foundation
import XCTest
@testable import SwiftHtml

final class SourceTagTests: XCTestCase {

    func testColorScheme() {
        let doc = Document {
            Source()
                .srcset("img.png")
                .mediaPrefersColorSchemeDark()
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<source srcset="img.png" media="(prefers-color-scheme: dark)">"#, html)
    }
    
   

}
