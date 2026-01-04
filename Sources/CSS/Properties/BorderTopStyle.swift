//
//  BorderTopStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderTopStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-top-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderTopStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderTopStyle {

    /// Sets the style of the top border
    public init(_ value: BorderStyleValue = .none) {
        self.init(value.rawValue)
    }
}
