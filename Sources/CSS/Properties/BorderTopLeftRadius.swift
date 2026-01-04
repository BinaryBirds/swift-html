//
//  BorderTopLeftRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderTopLeftRadius: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-top-left-radius" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderTopLeftRadius {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderTopLeftRadius {

    /// Defines the radius of the border of the top-left corner
    public init(_ value: BorderRadiusSingleValue) {
        self.init(value.rawValue)
    }
}
