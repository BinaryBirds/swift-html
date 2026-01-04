//
//  TabSize.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TabSizeValue {
    /// The number of space-characters to be displayed for each tab-character. Default value is 8    Play it »
    case number(Int)
    /// The length of a tab-character. This property value is not supported in any of the major browsers
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
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

public struct TabSize: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "tab-size" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TabSize {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TabSize {

    /// Specifies the width of a tab character
    public init(_ value: TabSizeValue = .number(8)) {
        self.init(value.rawValue)
    }

    /// Specifies the width of a tab character
    public init(_ value: Int = 8) {
        self.init(.number(value))
    }

    /// Specifies the width of a tab character
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
