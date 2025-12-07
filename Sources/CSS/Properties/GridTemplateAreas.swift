//
//  GridTemplateAreas.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridTemplateAreasValue {
    /// Default value. No named grid areas
    case none
    /// A sequence that specifies how each columns and row should display
    case names([String])

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .names(let values):
            return values.map { "'" + $0 + "'" }.joined(separator: " ")
        }
    }
}

public func GridTemplateAreas(_ value: String) -> Property {
    Property(name: "grid-template-areas", value: value)
}

/// Specifies how to display columns and rows, using named grid items
public func GridTemplateAreas(_ value: GridTemplateAreasValue = .none)
    -> Property
{
    GridTemplateAreas(value.rawValue)
}
