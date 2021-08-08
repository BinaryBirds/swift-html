//
//  Document.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Document: HTMLRepresentable {

    public enum `Type` {
        case html
        case xml
        case custom(String)

        var rawValue: String {
            switch self {
            case .html:
                return "<!DOCTYPE html>"
            case .xml:
                return #"<?xml version="1.0" encoding="utf-8" ?>"#
            case let .custom(value):
                return value
            }
        }
    }

    public let type: Type
    public let root: Tag
    
    public init(_ type: Type = .html, _ builder: () -> Tag) {
        self.type = type
        self.root = builder()
    }
    
    public var html: String {
        type.rawValue + root.html
    }
}



