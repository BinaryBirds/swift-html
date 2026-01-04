//
//  BorderLeftWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderLeftWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-left-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderLeftWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderLeftWidth {

    /// Sets the width of the left border
    public init(_ value: BorderWidthValue = .medium) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
