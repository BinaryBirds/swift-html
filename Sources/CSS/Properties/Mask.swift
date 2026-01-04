//
//  Mask.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: add proper mask support
// https://developer.mozilla.org/en-US/docs/Web/CSS/mask
/// Hides an element by masking or clipping the image at specific places

public struct Mask: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "mask" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Mask {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Mask {
}
