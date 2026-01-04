//
//  Widows.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WidowsValue {
    /// An integer that specifies the minimum number of visible lines. Negative values are not allowed. The default value is 2
    case number(Int)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Widows: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "widows" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Widows {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Widows {

    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public init(_ value: WidowsValue = .number(2)) {
        self.init(value.rawValue)
    }
}
