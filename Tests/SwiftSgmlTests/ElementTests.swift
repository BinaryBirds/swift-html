//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2022. 02. 24..
//

import SwiftSgml
import XCTest

final class TagTests: XCTestCase {

    func testBasics() {
        let doc = Document {
            Root {
                Branch {
                    Leaf("hello")
                }
            }
        }

        let expectation = """
            <root>
                <branch>
                    <leaf>hello</leaf>
                </branch>
            </root>
            """

        let renderer = DocumentRenderer()
        let result = renderer.render(doc)

        XCTAssertEqual(expectation.minify(), result)
    }

    func testAddChild() {
        let doc = Document {
            Root {
                Branch()
                    .add(child: Leaf("foo"))
                    .add(child: Leaf("bar"))
            }
        }

        let expectation = """
            <root>
                <branch>
                    <leaf>foo</leaf>
                    <leaf>bar</leaf>
                </branch>
            </root>
            """

        let renderer = DocumentRenderer()
        let result = renderer.render(doc)

        XCTAssertEqual(expectation.minify(), result)
    }

    func testRemoveAllChildren() {
        let doc = Document {
            Root {
                Branch {
                    Leaf("hello")
                    Leaf("world")
                }
            }
            .removeChildren()
        }

        let expectation = """
            <root></root>
            """

        let renderer = DocumentRenderer()
        let result = renderer.render(doc)

        XCTAssertEqual(expectation.minify(), result)
    }
}
