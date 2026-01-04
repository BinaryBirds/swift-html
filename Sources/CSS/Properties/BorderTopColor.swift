//
//  BorderTopColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderTopColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-top-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderTopColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderTopColor {

    /// Sets the color of the top border
    public init(_ value: CSSColorValue) {
        self.init(value.rawValue)
    }

    /// Sets the color of the top border
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
