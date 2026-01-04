//
//  GridRowGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridRowGapValue {
    /// Any legal length value, like px or %. 0 is the default value.
    case length(Unit)

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        }
    }
}

/// Specifies the size of the gap between rows

public struct GridRowGap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-row-gap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridRowGap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridRowGap {

    /// Specifies the size of the gap between rows
    public init(_ value: GridRowGapValue) {
        self.init(value.rawValue)
    }

    /// Specifies the size of the gap between rows
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
