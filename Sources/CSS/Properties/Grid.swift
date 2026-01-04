public struct Grid: Property {
    public enum Value: Sendable {
        /// Default value. No specific sizing of the columns or rows
        case none
        case values(
            GridTemplateRows.Value,
            GridTemplateColumns.Value,
            GridTemplateAreas.Value,
            GridAutoRows.Value,
            GridAutoColumns.Value,
            GridAutoFlow.Value
        )
        case initial
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .values(
                let tplRow,
                let tplCol,
                let tplAreas,
                let autoRow,
                let autoCol,
                let autoFlow
            ):
                return [
                    tplRow.rawValue + "/" + tplCol.rawValue,
                    tplAreas.rawValue,
                    autoRow.rawValue,
                    autoCol.rawValue,
                    autoFlow.rawValue,
                ]
                .joined(separator: " ")
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    public init(
        _ value: Value = .none
    ) {
        self.name = "grid"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for the grid-template-rows, grid-template-columns, grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    public init(
        _ tplRow: GridTemplateRows.Value,
        _ tplCol: GridTemplateColumns.Value,
        _ tplAreas: GridTemplateAreas.Value,
        _ autoRow: GridAutoRows.Value,
        _ autoCol: GridAutoColumns.Value,
        _ autoFlow: GridAutoFlow.Value
    ) {
        self.init(.values(tplRow, tplCol, tplAreas, autoRow, autoCol, autoFlow))
    }
}
