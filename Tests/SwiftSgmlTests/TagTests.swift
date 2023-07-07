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

        let html = """
        <root>
            <leaf>hello</leaf>
        </root>
        """
        assert(doc: doc, html: html)
    }    
}
