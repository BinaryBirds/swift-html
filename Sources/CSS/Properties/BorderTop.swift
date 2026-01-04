//
//  BorderTop.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderTop: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-top" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderTop {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderTop {

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public init(_ value: BorderLineValue) {
        self.init(value.rawValue)
    }
}
