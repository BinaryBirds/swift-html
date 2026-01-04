//
//  BorderWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderWidth {

    /// Sets the width of the four borders
    public init(_ value: BorderWidthValue = .medium) {
        self.init(value.rawValue)
    }

    /// Sets the width of the four borders
    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
