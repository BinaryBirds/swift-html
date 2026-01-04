//
//  BorderBottomWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderBottomWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-bottom-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderBottomWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderBottomWidth {

    /// Sets the width of the bottom border
    public init(_ value: BorderWidthValue = .medium) {
        self.init(value.rawValue)
    }

    /// Sets the width of the bottom border
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
