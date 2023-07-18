//
//  TagCompositionTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2022. 02. 16..
//

import XCTest
@testable import SwiftHtml

protocol TagRepresentable {
    
    func build() -> Tag
}

extension TagBuilder {
    
    static func buildExpression(_ expression: Tag) -> Tag {
        expression
    }
    
    static func buildExpression(_ expression: TagRepresentable) -> Tag {
        expression.build()
    }
}

struct ListComponent: TagRepresentable {
    
    let items: [String]
    
    init(_ items: [String]) {
        self.items = items
    }
    
    @TagBuilder
    func build() -> Tag {
        Ul {
            for item in items {
                Li(item)
            }
        }
    }
}


final class TagCompositionTests: XCTestCase {
    private let renderer = DocumentRenderer(minify: false)
    
    func testListComponentBuild() {
        let doc = Document {
            ListComponent(["a", "b", "c"]).build()
        }
        
        let producedHTML = renderer.render(doc)
        
        let referenceHTML = """
        <ul>
            <li>a</li>
            <li>b</li>
            <li>c</li>
        </ul>
        """
        
        XCTAssertEqual(producedHTML, referenceHTML)
    }
    
    func testListComponent() {
        let doc = Document {
            ListComponent(["a", "b", "c"])
        }
        
        let producedHTML = renderer.render(doc)
        
        let referenceHTML = """
        <ul>
            <li>a</li>
            <li>b</li>
            <li>c</li>
        </ul>
        """
        
        XCTAssertEqual(producedHTML, referenceHTML)
    }
    
    func testListComponentAndTags() {
        let doc = Document {
            H1("foo")
            ListComponent(["a", "b", "c"])
        }
        
        let producedHTML = renderer.render(doc)
        
        let referenceHTML = """
        <h1>foo</h1>
        <ul>
            <li>a</li>
            <li>b</li>
            <li>c</li>
        </ul>
        """
        
        XCTAssertEqual(producedHTML, referenceHTML)
    }
    
    func testListComponentAndGroupTag() {
        let doc = Document {
            H1("foo")
            for value in ["1", "2", "3"] {
                GroupTag {
                    H2(value)
                    ListComponent(["a", "b", "c"])
                }
            }
        }
        
        let producedHTML = renderer.render(doc)
        
        let referenceHTML = """
        <h1>foo</h1>
        <h2>1</h2>
        <ul>
            <li>a</li>
            <li>b</li>
            <li>c</li>
        </ul>
        <h2>2</h2>
        <ul>
            <li>a</li>
            <li>b</li>
            <li>c</li>
        </ul>
        <h2>3</h2>
        <ul>
            <li>a</li>
            <li>b</li>
            <li>c</li>
        </ul>
        """
        
        XCTAssertEqual(producedHTML, referenceHTML)
    }
}
