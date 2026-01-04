//
//  BorderRightColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderRightColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-right-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderRightColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderRightColor {

    /// Sets the color of the right border
    public init(_ value: CSSColorValue) {
        self.init(value.rawValue)
    }

    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
