//
//  Document.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Document {

    public enum `Type` {
        case unspecified
        case html
        case xml
        case custom(String)   
    }

    public let type: `Type`
    public let root: Tag
    
    public init(_ type: `Type` = .unspecified, _ builder: () -> Tag) {
        self.type = type
        self.root = builder()
    }
}



