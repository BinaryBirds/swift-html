//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

import Foundation

struct DocumentRenderer {
    
    let document: Document
    
    private let newline = "\n"
    
    init(_ document: Document) {
        self.document = document
    }

    public func render(minify: Bool = false) -> String {
        var result = renderDocumentType()
        if !minify {
           result += newline
        }
//        result += renderTags(minify: minify)
        return result
    }
    
    // MARK: - private render methods
    
    private func renderDocumentType() -> String {
        switch document.type {
        case .html:
            return "<!DOCTYPE html>"
        case .xml:
            return #"<?xml version="1.0" encoding="utf-8" ?>"#
        case let .custom(value):
            return value
        }
    }
/*
    private func renderTags(minify: Bool = false) -> String {
        
        document.root.
        
        switch type {
        case .standard:
            var htmlValue = children.map(\.rawValue).joined(separator: "")
            if !children.isEmpty {
                htmlValue = htmlValue + "\n"
            }
            return "\n<" + name! + (attributes.isEmpty ? "" : " ") + renderAttributesList() + ">" + (contents ?? "") + htmlValue + "</" + name! + ">"
        case .comment:
            return "\n<!--" + (contents ?? "") + "-->"
        case .empty:
            return "\n<" + name! + (attributes.isEmpty ? "" : " ") + renderAttributesList() + ">"
//        case .group:
//            var htmlValue = children.map(\.html).joined(separator: "")
//            if !children.isEmpty {
//                htmlValue = htmlValue + "\n"
//            }
//            return htmlValue
        }
    }

    private func renderAttributesList(minify: Bool = false) -> String {
        return attributes.reduce([]) { res, next in
            if let value = next.value {
                return res + [next.key + #"=""# + value + #"""#]
            }
            return res + [next.key]
        }.joined(separator: " ")
    }
     
     */
}
