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

public func TextCombineUpright(_ value: String) -> Property {
    Property(name: "text-combine-upright", value: value)
}

/// Specifies the combination of multiple characters into the space of a single character
public func TextCombineUpright(_ value: TextCombineUprightValue) -> Property {
    TextCombineUpright(value.rawValue)
}
