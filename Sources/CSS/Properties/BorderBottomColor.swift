//
//  BorderBottomColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderBottomColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-bottom-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderBottomColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderBottomColor {

    /// Sets the color of the bottom border
    public init(_ value: CSSColorValue) {
        self.init(value.rawValue)
    }

    /// Sets the color of the bottom border
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
