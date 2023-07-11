//
//  Document.swift
//  SwiftSgml
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
    public let root: TagRepresentable
    
    public init(_ type: `Type` = .unspecified, @TagBuilder _ builder: () -> TagRepresentable) {
        self.type = type
        self.root = builder()
    }
}



