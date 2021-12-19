//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

import XCTest
@testable import SwiftSvg

final class SvgTests: XCTestCase {

    func testSvgWithLine() {
        let doc = Document {
            Svg {
                Line(x1: 1, y1: 2, x2: 3, y2: 4)
            }
            .width(24)
            .height(24)
            .viewBox(minX: 0, minY: 0, width: 24, height: 24)
            .fill("none")
            .strokeWidth(2)
            .strokeLinecap("round")
            .strokeLinejoin("round")
            
        }
        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="1" y1="2" x2="3" y2="4"></line></svg>"#)
    }
    
    func testSvgWithCircle() {
        let doc = Document {
            Svg {
                Circle(cx: 1, cy: 2, r: 3)
            }
        }
        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<svg><circle cx="1" cy="2" r="3"></circle></svg>"#)
    }

}
