//
//  Document.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Document: HTMLRepresentable {

    public enum Doctype {
        case html5
        case custom(String)
        
        var rawValue: String {
            switch self {
            case .html5:
                return "html"
            case let .custom(value):
                return value
            }
        }
    }

    public let type: Doctype
    public let root: Html
    
    public init(_ type: Doctype = .html5, _ builder: () -> Html) {
        self.type = type
        self.root = builder()
    }
    
    public var html: String {
        "<!DOCTYPE " + type.rawValue + ">" + root.html
    }
}



