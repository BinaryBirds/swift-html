//
//  BorderLeft.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderLeft: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-left" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderLeft {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderLeft {

    /// A shorthand property for all the border-left-* properties
    public init(_ value: BorderLineValue) {
        self.init(value.rawValue)
    }
}
