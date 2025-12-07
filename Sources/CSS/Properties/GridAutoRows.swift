//
//  GridAutoRows.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridAutoRowsValue {
    /// Default value. The size of the rows is determined by the size of the largest item in the row
    case auto
    /// Sets the size of each row to depend on the largest item in the row
    case maxContent
    /// Sets the size of each row to depend on the largest item in the row
    case minContent
    /// Sets the size of the rows, by using a legal length value.
    case length(Unit)

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .maxContent:
            return "max-content"
        case .minContent:
            return "min-content"
        case .length(let value):
            return value.rawValue
        }
    }
}

/// Specifies a default row size
public func GridAutoRows(_ value: String) -> Property {
    Property(name: "grid-auto-rows", value: value)
}
