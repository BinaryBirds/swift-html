//
//  Attribute.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Attribute {

    public var key: String
    public var value: String?
    
    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }
}
