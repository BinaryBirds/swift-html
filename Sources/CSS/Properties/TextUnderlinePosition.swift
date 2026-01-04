//
//  TextUnderlinePosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextUnderlinePositionValue: String {
    case auto
    case under
    case left
    case right
    case underLeft = "under left"
    case rightUnder = "right under"
    case inherit
    case initial
    case revert
    case unset
}

public struct TextUnderlinePosition: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-underline-position" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextUnderlinePosition {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextUnderlinePosition {

    /// Specifies the position of the underline which is set using the text-decoration property
    public init(_ value: TextUnderlinePositionValue) {
        self.init(value.rawValue)
    }
}
