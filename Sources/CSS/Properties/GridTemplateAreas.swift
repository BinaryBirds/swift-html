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

public struct GridTemplateAreas: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-template-areas" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridTemplateAreas {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridTemplateAreas {

    /// Specifies how to display columns and rows, using named grid items
    public init(_ value: GridTemplateAreasValue = .none) {
        self.init(value.rawValue)
    }
}
