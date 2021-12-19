//
//  DocumentRenderer.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

public struct DocumentRenderer {

    private let newline: String
    public let minify: Bool
    public let indent: Int
    
    public init(minify: Bool = false, indent: Int = 4) {
        self.minify = minify
        self.indent = minify ? 0 : indent
        self.newline = minify ? "" : "\n"
    }

    public func render(_ document: Document) -> String {
        renderDocumentType(document.type) + render(tag: document.root)
    }
    
    // MARK: - private render methods

    private func renderDocumentType(_ type: Document.`Type`) -> String {
        
        switch type {
        case .unspecified:
            return ""
        case .html:
            return "<!DOCTYPE html>" + newline
        case .xml:
            return #"<?xml version="1.0" encoding="utf-8" ?>"# + newline
        case let .custom(value):
            return value + newline 
        }
    }

    private func render(tag: Tag, level: Int = 0) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        switch tag.node.type {
        case .standard:
            return spaces + renderOpening(tag) + (tag.node.contents ?? "") + renderChildren(tag, level: level, spaces: spaces) + renderClosing(tag)
        case .comment:
            return spaces + "<!--" + (tag.node.contents ?? "") + "-->"
        case .empty:
            return spaces + renderOpening(tag)
        case .group:
            return spaces + (tag.node.contents ?? "") + renderChildren(tag, level: level, spaces: spaces)
        }
    }
    
    private func renderChildren(_ tag: Tag, level: Int, spaces: String) -> String {
        var children = tag.children.map { render(tag: $0, level: level + 1) }.joined(separator: newline)
        if !children.isEmpty {
            children = newline + children + newline + spaces
        }
        return children
    }
    
    private func renderOpening(_ tag: Tag) -> String {
        return "<" + tag.node.name! + (tag.node.attributes.isEmpty ? "" : " ") + renderAttributes(tag.node.attributes) + ">"
    }
    
    private func renderClosing(_ tag: Tag) -> String {
        "</" + tag.node.name! + ">"
    }

    private func renderAttributes(_ attributes: [Attribute]) -> String {
        return attributes.reduce([]) { res, next in
            if let value = next.value {
                return res + [next.key + #"=""# + value + #"""#]
            }
            return res + [next.key]
        }.joined(separator: " ")
    }
}
