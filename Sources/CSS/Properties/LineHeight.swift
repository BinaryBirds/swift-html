//
//  LineHeight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum LineHeightValue {
    /// A normal line height. This is default
    case normal
    /// A number that will be multiplied with the current font-size to set the line height
    case number(Double)
    /// A fixed line height in px, pt, cm, etc.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .number(let value):
            return String(value)
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct LineHeight: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "line-height" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> LineHeight {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension LineHeight {

    /// Sets the line height
    public init(_ value: LineHeightValue = .normal) {
        self.init(value.rawValue)
    }
}
