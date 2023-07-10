//
//  DocumentRenderer.swift
//  SwiftSgml
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
            return spaces + "<!-- " + (tag.node.contents ?? "") + " -->"
        case .empty:
            return spaces + renderOpening(tag)
        case .group:
            var contents = ""
            if let rawValue = tag.node.contents {
                contents = spaces + rawValue
            }
            return contents + renderChildren(tag, level: level, spaces: spaces, isGrouped: true)
        }
    }
    
    private func renderChildren(_ tag: Tag, level: Int, spaces: String, isGrouped: Bool = false) -> String {
        var newLevel = level + 1
        if isGrouped {
            newLevel = level
        }
        var children = tag.children.map { render(tag: $0, level: newLevel) }.joined(separator: newline)
        if !children.isEmpty {
            if !isGrouped {
                children = newline + children + newline + spaces
            }
        }
        return children
    }
    
    private func renderOpening(_ tag: Tag) -> String {
        return "<" + tag.node.name + (tag.node.attributes.isEmpty ? "" : " ") + renderAttributes(tag.node.attributes) + ">"
    }
    
    private func renderClosing(_ tag: Tag) -> String {
        "</" + tag.node.name + ">"
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
