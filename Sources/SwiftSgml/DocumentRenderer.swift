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
        if let type = tag.type {
            switch type {
            case .comment:
                return spaces + "<!-- " + (tag.contents ?? "") + " -->"
            case .empty:
                return spaces + renderOpening(tag)
            case .standard:
                return spaces + renderOpening(tag) + (tag.contents ?? "") + renderChildren(tag, level: level, spaces: spaces) + renderClosing(tag)
            }
        } else {
            var contents = ""
            if let rawValue = tag.contents {
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
        let tagChildren = tag.children ?? []
        var children = tagChildren.map { render(tag: $0, level: newLevel) }.joined(separator: newline)
        if !children.isEmpty {
            if !isGrouped {
                children = newline + children + newline + spaces
            }
        }
        return children
    }
    
    private func renderOpening(_ tag: Tag) -> String {
        let attributes = tag.attributes ?? []
        return "<" + tag.name + (attributes.isEmpty ? "" : " ") + renderAttributes(attributes) + ">"
    }
    
    private func renderClosing(_ tag: Tag) -> String {
        "</" + tag.name + ">"
    }

    private func renderAttributes(_ attributes: [Attribute]) -> String {
        attributes.reduce([]) { res, next in
            if let value = next.value {
                return res + [next.key + #"=""# + value + #"""#]
            }
            return res + [next.key]
        }.joined(separator: " ")
    }
}
