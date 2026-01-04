//
//  Resize.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ResizeValue: String {
    /// Default value. The user cannot resize the element
    case none
    /// The user can resize both the height and width of the element
    case both
    /// The user can resize the width of the element
    case horizontal
    /// The user can resize the height of the element
    case vertical
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Resize: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "resize" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Resize {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Resize {

    /// Defines if (and how) an element is resizable by the user
    public init(_ value: ResizeValue = .none) {
        self.init(value.rawValue)
    }
}
