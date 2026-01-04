//
//  GridColumnGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridColumnGapValue {
    /// Any legal length value, like px or %. 0 is the default value. Read about length units
    case length(Unit)

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        }
    }
}

public struct GridColumnGap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-column-gap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridColumnGap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridColumnGap {

    /// Specifies the size of the gap between columns
    public init(_ value: GridColumnGapValue) {
        self.init(value.rawValue)
    }

    /// Specifies the size of the gap between columns
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
