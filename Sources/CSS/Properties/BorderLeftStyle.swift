//
//  BorderLeftStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderLeftStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-left-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderLeftStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderLeftStyle {

    /// Sets the style of the left border
    public init(_ value: BorderStyleValue = .none) {
        self.init(value.rawValue)
    }
}
