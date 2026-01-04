//
//  GridAutoFlow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridAutoFlowValue: String {
    /// Default value. Places items by filling each row
    case row
    /// Places items by filling each column
    case column
    /// Place items to fill any holes in the grid
    case dense
    /// Places items by filling each row, and fill any holes in the grid
    case rowDense = "row dense"
    /// Places items by filling each column, and fill any holes in the grid
    case columnDense = "column dense"
}

public struct GridAutoFlow: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-auto-flow" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridAutoFlow {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridAutoFlow {

    /// Specifies how auto-placed items are inserted in the grid
    public init(_ value: GridAutoFlowValue) {
        self.init(value.rawValue)
    }
}
