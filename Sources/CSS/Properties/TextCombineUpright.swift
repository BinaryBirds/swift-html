//
//  TextCombineUpright.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextCombineUprightValue {
    case none
    case all
    case digits(Int)
    case inherit
    case initial
    case revert
    case unset

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .all:
            return "all"
        case .digits(let value):
            return "digits \(value)"
        case .inherit:
            return "inherit"
        case .initial:
            return "initial"
        case .revert:
            return "revert"
        case .unset:
            return "unset"
        }
    }
}

public struct TextCombineUpright: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-combine-upright" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextCombineUpright {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextCombineUpright {

    /// Specifies the combination of multiple characters into the space of a single character
    public init(_ value: TextCombineUprightValue) {
        self.init(value.rawValue)
    }
}
