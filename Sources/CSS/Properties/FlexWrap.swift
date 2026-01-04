//
//  FlexWrap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexWrapValue: String {
    /// Default value. Specifies that the flexible items will not wrap
    case nowrap
    /// Specifies that the flexible items will wrap if necessary
    case wrap
    /// Specifies that the flexible items will wrap, if necessary, in reverse order
    case wrapReverse = "wrap-reverse"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct FlexWrap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "flex-wrap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FlexWrap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FlexWrap {

    /// Specifies whether the flexible items should wrap or not
    public init(_ value: FlexWrapValue = .nowrap) {
        self.init(value.rawValue)
    }
}
