//
//  OverflowY.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct OverflowY: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "overflow-y" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> OverflowY {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension OverflowY {

    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public init(_ value: OverflowValue = .visible) {
        self.init(value.rawValue)
    }
}
