//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 24..
//

import XCTest
@testable import SwiftSgml

final class TagTests: XCTestCase {

    func testConvenienceSingleTagInit() {

        let doc = Document {
            Root(Leaf("hello"))
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <root>
                                <leaf>hello</leaf>
                            </root>
                            """)
    }
    
    func testConvenienceAsyncTagInit() async throws {
        
        func leaf() async throws -> Leaf {
            Leaf("hello")
        }

        let root = try await Root {
            try await leaf()
        }
        let doc = Document {
            root
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <root>
                                <leaf>hello</leaf>
                            </root>
                            """)
    }
    
}
