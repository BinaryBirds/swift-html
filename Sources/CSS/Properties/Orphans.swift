//
//  Orphans.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: add orphans support
// https://developer.mozilla.org/en-US/docs/Web/CSS/orphans
/// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element

public struct Orphans: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "orphans" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Orphans {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Orphans {
}
