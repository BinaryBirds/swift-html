//
//  BorderBottomRightRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderBottomRightRadius: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-bottom-right-radius" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderBottomRightRadius {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderBottomRightRadius {

    /// Defines the radius of the border of the bottom-right corner
    public init(_ value: BorderRadiusSingleValue) {
        self.init(value.rawValue)
    }
}
