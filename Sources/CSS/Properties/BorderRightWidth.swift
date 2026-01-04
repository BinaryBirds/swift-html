//
//  BorderRightWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct BorderRightWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-right-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderRightWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderRightWidth {

    /// Sets the width of the right border
    public init(_ value: BorderWidthValue = .medium) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit) {
        self.init(.length(value))
    }
}
