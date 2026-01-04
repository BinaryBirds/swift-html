//
//  BackgroundColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BackgroundColor: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background-color" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackgroundColor {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackgroundColor {

    /// Specifies the background color of an element
    public init(_ value: CSSColorValue = .transparent) {
        self.init(value.rawValue)
    }

    /// Specifies the background color of an element
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
