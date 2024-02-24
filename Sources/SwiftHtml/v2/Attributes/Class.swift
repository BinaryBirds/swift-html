//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct Class: Attribute {
    public let key: String
    public let value: String?

    public init(_ value: String? = nil) {
        self.key = "class"
        self.value = value
    }
}
