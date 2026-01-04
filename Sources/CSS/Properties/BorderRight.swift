//
//  BorderRight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderRight: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-right" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderRight {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderRight {

    /// A shorthand property for all the border-right-* properties
    public init(_ value: BorderLineValue) {
        self.init(value.rawValue)
    }
}
