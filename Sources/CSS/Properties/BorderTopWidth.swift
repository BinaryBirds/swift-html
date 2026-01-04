//
//  BorderTopWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderTopWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-top-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderTopWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderTopWidth {

    /// Sets the width of the top border
    public init(_ value: BorderWidthValue = .medium) {
        self.init(value.rawValue)
    }

    /// Sets the width of the top border
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
