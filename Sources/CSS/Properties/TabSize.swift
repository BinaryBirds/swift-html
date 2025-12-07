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

public func TabSize(_ value: String) -> Property {
    Property(name: "tab-size", value: value)
}

/// Specifies the width of a tab character
public func TabSize(_ value: TabSizeValue = .number(8)) -> Property {
    TabSize(value.rawValue)
}

/// Specifies the width of a tab character
public func TabSize(_ value: Int = 8) -> Property {
    TabSize(.number(value))
}

/// Specifies the width of a tab character
public func TabSize(_ value: Unit) -> Property {
    TabSize(.length(value))
}
