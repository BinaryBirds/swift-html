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
        final class Foo: Tag {
            
        }

        let doc = Document {
            Foo("bar")
                .setContents("baz")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <foo>baz</foo>
                            """)
    }
}
