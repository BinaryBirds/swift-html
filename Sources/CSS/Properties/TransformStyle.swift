//
//  TransformStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransformStyleValue: String {
    /// Specifies that child elements will NOT preserve its 3D position. This is default
    case flat
    /// Specifies that child elements will preserve its 3D position
    case preserve3d = "preserve-3d"
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TransformStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "transform-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TransformStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TransformStyle {

    /// Specifies how nested elements are rendered in 3D space
    public init(_ value: TransformStyleValue = .flat) {
        self.init(value.rawValue)
    }
}
