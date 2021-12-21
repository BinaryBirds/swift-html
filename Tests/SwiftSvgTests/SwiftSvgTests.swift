//
//  SwiftSvgTests.swift
//  SwiftSvgTests
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

import XCTest
@testable import SwiftSvg

final class SwiftSvgTests: XCTestCase {

    func testLine() {
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
        XCTAssertEqual(DocumentRenderer().render(doc), """
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="1" y1="2" x2="3" y2="4"></line>
            </svg>
            """)
    }
    
    func testCircle() {
        let doc = Document {
            Svg {
                Circle(cx: 1, cy: 2, r: 3)
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <svg>
            <circle cx="1" cy="2" r="3"></circle>
        </svg>
        """)
    }
    
    func testPolygon() {
        let doc = Document {
            Svg {
                Polygon([1, 2, 3, 4])
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <svg>
            <polygon points="1 2 3 4"></polygon>
        </svg>
        """)
    }
    
    func testPolyline() {
        let doc = Document {
            Svg {
                Polyline([1, 2, 3, 4])
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <svg>
            <polyline points="1 2 3 4"></polyline>
        </svg>
        """)
    }
    
    func testRect() {
        let doc = Document {
            Svg {
                Rect(x: 1, y: 2, width: 3, height: 4)
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <svg>
            <rect x="1" y="2" width="3" height="4"></rect>
        </svg>
        """)
    }
    
    func testEllipse() {
        let doc = Document {
            Svg {
                Ellipse(cx: 1, cy: 2, rx: 3, ry: 4)
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <svg>
            <ellipse cx="1" cy="2" rx="3" ry="4"></ellipse>
        </svg>
        """)
    }

}
