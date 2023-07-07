//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 16..
//

import XCTest
@testable import SwiftHtml

//protocol TagRepresentable {
//
//    func build() -> Tag
//}
//
//extension TagBuilder {
//
//    static func buildExpression(_ expression: TagRepresentable) -> Tag {
//        expression.build()
//    }
//    
//    static func buildExpression(_ expression: TagRepresentable) -> [Tag] {
//        [expression.build()]
//    }
//
//    static func buildExpression(_ expression: [TagRepresentable]) -> [Tag] {
//        expression.map { $0.build() }
//    }
//
//    static func buildExpression(_ expression: [TagRepresentable]) -> Tag {
//        GroupTag {
//            expression.map { $0.build() }
//        }
//    }
//}
//
//struct ListComponent: TagRepresentable {
//
//    let items: [String]
//    
//    init(_ items: [String]) {
//        self.items = items
//    }
//
//    @TagBuilder
//    func build() -> Tag {
//        Ul {
//            items.map { Li($0) }
//        }
//    }
//}
//
//
//final class TagCompositionTests: XCTestCase {
//
//    func testListComponentBuild() {
//        let doc = Document {
//            ListComponent(["a", "b", "c"]).build()
//        }
//
//        let html = """
//                            <ul>
//                                <li>a</li>
//                                <li>b</li>
//                                <li>c</li>
//                            </ul>
//                            """
//    }
//    
//    func testListComponent() {
//        let doc = Document {
//            ListComponent(["a", "b", "c"])
//        }
//
//        let html = """
//                            <ul>
//                                <li>a</li>
//                                <li>b</li>
//                                <li>c</li>
//                            </ul>
//                            """
//    }
//    
//    func testListComponentAndTags() {
//        let doc = Document {
//            H1("foo")
//            ListComponent(["a", "b", "c"])
//        }
//
//        let html = """
//                            <h1>foo</h1>
//                            <ul>
//                                <li>a</li>
//                                <li>b</li>
//                                <li>c</li>
//                            </ul>
//                            """
//    }
//    
//    func testListComponentAndGroupTag() {
//        let doc = Document {
//            H1("foo")
//            ["1", "2", "3"].map { value -> Tag in
//                GroupTag {
//                    H2(value)
//                    ListComponent(["a", "b", "c"])
//                }
//            }
//        }
//
//        let html = """
//                            <h1>foo</h1>
//                            <h2>1</h2>
//                            <ul>
//                                <li>a</li>
//                                <li>b</li>
//                                <li>c</li>
//                            </ul>
//                            <h2>2</h2>
//                            <ul>
//                                <li>a</li>
//                                <li>b</li>
//                                <li>c</li>
//                            </ul>
//                            <h2>3</h2>
//                            <ul>
//                                <li>a</li>
//                                <li>b</li>
//                                <li>c</li>
//                            </ul>
//                            """
//    }
//}
