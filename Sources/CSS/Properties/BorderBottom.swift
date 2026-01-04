//
//  BorderBottom.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderBottom: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-bottom" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderBottom {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderBottom {

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public init(_ value: BorderLineValue) {
        self.init(value.rawValue)
    }
}
