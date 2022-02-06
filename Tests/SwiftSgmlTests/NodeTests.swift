//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 06..
//

import XCTest
@testable import SwiftSgml

final class NodeTests: XCTestCase {

    func testNodeContents() {
        final class FooTag: Tag {
            init(_ contents: String? = nil) {
                super.init(Node(type: .standard, name: "foo", contents: contents))
            }
            
            func updateContents() -> Tag {
                node.contents = "bar"
                return self
            }
        }

        
        let doc = Document {
            FooTag()
                .updateContents()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <foo>bar</foo>
                            """)
    }
}
