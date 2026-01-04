//
//  OverflowWrap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OverflowWrapValue: String {
    case normal
    case breakWord = "break-word"
    case anywhere
    case inherit
    case initial
    case revert
    case unset
}

public struct OverflowWrap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "overflow-wrap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> OverflowWrap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension OverflowWrap {

    /// Specifies whether or not the browser may break lines within words in order to prevent overflow (when a string is too long to fit its containing box)
    public init(_ value: OverflowWrapValue) {
        self.init(value.rawValue)
    }
}
