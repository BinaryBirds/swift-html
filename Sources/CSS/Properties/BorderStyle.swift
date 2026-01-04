//
//  BorderStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderStyle {

    /// Sets the style of the four borders
    public init(_ value: BorderStyleValue = .none) {
        self.init(value.rawValue)
    }
}
