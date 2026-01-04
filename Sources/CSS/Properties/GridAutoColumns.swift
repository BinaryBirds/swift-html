//
//  GridAutoColumns.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridAutoColumnsValue {
    /// Default value. The size of the columns is determined by the size of the container
    case auto
    // @TODO: implemnet min-max & fit content
    //    case fit-content()
    /// Sets the size of each column depending on the largest item in the column
    case maxContent
    /// Sets the size of each column depending on the smallest item in the column
    case minContent
    /// Sets a size range greater than or equal to min and less than or equal to max
    //    case minmax(min.max)
    ///     Sets the size of the columns, by using a legal length value.
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

public struct GridAutoColumns: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-auto-columns" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridAutoColumns {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridAutoColumns {

    /// Specifies a default column size
    public init(_ value: GridAutoColumnsValue = .auto) {
        self.init(value.rawValue)
    }
}
