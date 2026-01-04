//
//  MaskType.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: add mask support
// https://developer.mozilla.org/en-US/docs/Web/CSS/mask-type
/// Specifies whether a mask element is used as a luminance or an alpha mask

public struct MaskType: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "mask-type" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MaskType {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MaskType {
}
