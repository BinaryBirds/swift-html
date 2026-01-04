//
//  Hyphens.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum HyphensValue: String {
    /// Words are not hyphenated
    case none
    /// Default. Words are only hyphenated at &hyphen; or &shy; (if needed)
    case manual
    /// Words are hyphenated where the algorithm is deciding (if needed)
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Hyphens: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "hyphens" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Hyphens {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Hyphens {

    /// Sets how to split words to improve the layout of paragraphs
    public init(_ value: HyphensValue = .manual) {
        self.init(value.rawValue)
    }
}
