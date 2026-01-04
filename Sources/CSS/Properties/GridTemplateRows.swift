//
//  GridTemplateRows.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridTemplateRowsValue {
    /// No size is set. Rows are created if needed
    case none
    /// The size of the rows is determined by the size of the container, and on the size of the content of the items in the row
    case auto
    /// Sets the size of each row to depend on the largest item in the row
    case maxContent
    /// Sets the size of each row to depend on the smallest item in the row
    case minContent
    /// Sets the size of the rows, by using a legal length value.
    case length(Unit)

    var rawValue: String {
        switch self {
        case .none:
            return "none"
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

public struct GridTemplateRows: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-template-rows" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridTemplateRows {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridTemplateRows {

    /// Specifies the size of the rows in a grid layout
    public init(_ value: GridTemplateRowsValue = .none) {
        self.init(value.rawValue)
    }
}
