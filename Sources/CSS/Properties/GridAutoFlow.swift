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

public func GridAutoFlow(_ value: String) -> Property {
    Property(name: "grid-auto-flow", value: value)
}

/// Specifies how auto-placed items are inserted in the grid
public func GridAutoFlow(_ value: GridAutoFlowValue) -> Property {
    GridAutoFlow(value.rawValue)
}
