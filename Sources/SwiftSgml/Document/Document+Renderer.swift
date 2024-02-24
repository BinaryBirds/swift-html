//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct DocumentRenderer {
    
    public struct Options: OptionSet, Sendable {

        /// Produce human-readable HTML with indented output.
        public static let prettyPrinted = Options(rawValue: 1 << 0)

        /// The format's default value.
        public let rawValue: UInt

        /// Creates an OutputFormatting value with the given raw value.
        public init(rawValue: UInt) {
            self.rawValue = rawValue
        }
    }
    
    public var options: Options
    
    public init(options: Options = []) {
        self.options = options
    }
    
    // TODO: implement nice rendering...
    private var prettyPrint: Bool {
        options.contains(.prettyPrinted)
    }
    
    public func render(_ document: Document) -> String {
        var result: [String] = []

        result += [renderDocumentType(document.type)]
        result += render(document.root.node)
        
        return result.joined(separator: prettyPrint ? "\n" : "")
    }
}

private extension DocumentRenderer {
    
    func renderDocumentType(_ type: Document.`Type`) -> String {
        switch type {
        case .unspecified:
            return ""
        case .html:
            return "<!DOCTYPE html>"
        case .xml:
            return #"<?xml version="1.0" encoding="utf-8" ?>"#
        case let .custom(value):
            return value
        }
    }
    
    func render(_ node: Node) -> [String] {
        var result: [String] = []
        switch node {
        case .group(let children):
            for child in children {
                result += render(child)
            }
        case .standard(let node, let children):
            result += ["<\(node.name)\(attr(node.attributes))>"]
            for child in children {
                result += render(child)
            }
            result += ["</\(node.name)>"]
        case .short(let node):
            result += ["<\(node.name)\(attr(node.attributes))>"]
        case .text(let node):
            result += ["\(node.value)"]
        case .comment(let node):
            result += ["<!-- \(node.value) -->"]
        }
        return result
    }
    
    func attr(_ attributes: [any Attribute]) -> String {
        let attr = render(attributes).joined(separator: " ")
        if !attr.isEmpty {
            return " " + attr
        }
        return attr
    }
    
    func render(_ attributes: [any Attribute]) -> [String] {
        attributes.map { attribute in
            if let value = attribute.value {
                return #"\#(attribute.key)="\#(value)""#
            }
            return attribute.key
        }
    }
}
