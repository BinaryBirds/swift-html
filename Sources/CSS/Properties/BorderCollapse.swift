//
//  BorderCollapse.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderCollapseValue: String {
    /// Borders are separated; each cell will display its own borders. This is default.    Play it »
    case separate
    /// Borders are collapsed into a single border when possible (border-spacing and empty-cells properties have no effect)    Play it »
    case collapse
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct BorderCollapse: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-collapse" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderCollapse {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderCollapse {

    /// Sets whether table borders should collapse into a single border or be separated
    public init(_ value: BorderCollapseValue = .separate) {
        self.init(value.rawValue)
    }
}
