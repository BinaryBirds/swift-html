//
//  BorderColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderColor {

    /// Sets the color of the four borders
    public init(_ value: CSSColorValue) {
        self.init(value.rawValue)
    }

    /// Sets the color of the four borders
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
