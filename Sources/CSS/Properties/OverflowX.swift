//
//  OverflowX.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct OverflowX: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "overflow-x" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> OverflowX {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension OverflowX {

    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    public init(_ value: OverflowValue = .visible) {
        self.init(value.rawValue)
    }
}
