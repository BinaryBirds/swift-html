//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct Custom: Attribute {
    public let key: String
    public var value: String?

    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }
}

public struct Flag: Attribute {

    public let key: String
    public var value: String? {
        get { nil }
        set {}
    }
    
    public init(_ key: String) {
        self.key = key
    }
}
