//
//  DocumentTests.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class DocumentTests: XCTestCase {

    func testHtml() {
        let tag = Document(.html) {
            Html {}
        }
        
//        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
//
//        XCTAssertEqual(res, """
//                            <!DOCTYPE html>
//                            <html></html>
//                            """)
    }

    func testXml() {
//        struct Root: Tag {
//            var node: Node
//            
//            init(_ node: Node) {
//                self.node = node
//            }
//            
//            init() {
//                self.init(.init(type: .standard, name: "root"))
//            }
//        }
//        
//        let tag = Document(.xml) {
//            Root()
//        }
//        
//        let res = tag.html.trimmingCharacters(in: .whitespacesAndNewlines)
//
//        XCTAssertEqual(res, """
//                            <?xml version="1.0" encoding="utf-8" ?>
//                            <root></root>
//                            """)
    }
}
