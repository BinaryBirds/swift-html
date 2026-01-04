//
//  BackfaceVisibility.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackfaceVisibilityValue: String {
    /// Default value. The backside is visible
    case visible
    /// The backside is not visible
    case hidden
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BackfaceVisibility: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "backface-visibility" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackfaceVisibility {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackfaceVisibility {

    /// Defines whether or not the back face of an element should be visible when facing the user
    public init(_ value: BackfaceVisibilityValue = .visible) {
        self.init(value.rawValue)
    }
}
