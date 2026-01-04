//
//  OutlineStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineStyleValue: String {
    /// Specifies no outline. This is default
    case none
    /// Specifies a hidden outline
    case hidden
    /// Specifies a dotted outline
    case dotted
    /// Specifies a dashed outline
    case dashed
    /// Specifies a solid outline
    case solid
    /// Specifies a double outliner
    case double
    /// Specifies a 3D grooved outline. The effect depends on the outline-color value
    case groove
    /// Specifies a 3D ridged outline. The effect depends on the outline-color value
    case ridge
    /// Specifies a 3D inset outline. The effect depends on the outline-color value
    case inset
    /// Specifies a 3D outset outline. The effect depends on the outline-color value
    case outset
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct OutlineStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "outline-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> OutlineStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension OutlineStyle {

    /// Sets the style of an outline
    public init(_ value: OutlineStyleValue = .none) {
        self.init(value.rawValue)
    }
}
