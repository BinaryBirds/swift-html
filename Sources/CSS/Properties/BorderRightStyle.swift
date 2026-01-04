//
//  BorderRightStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderRightStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-right-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderRightStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderRightStyle {

    /// Sets the style of the right border
    public init(_ value: BorderStyleValue = .none) {
        self.init(value.rawValue)
    }
}
