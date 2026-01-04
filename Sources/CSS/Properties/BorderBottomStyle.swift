//
//  BorderBottomStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderBottomStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-bottom-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderBottomStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderBottomStyle {

    /// Sets the style of the bottom border
    public init(_ value: BorderStyleValue = .none) {
        self.init(value.rawValue)
    }
}
