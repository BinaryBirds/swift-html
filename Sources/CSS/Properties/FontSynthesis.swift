//
//  FontSynthesis.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontSynthesisValue: String {
    case none
    case weight
    case style
    case weightStyle = "weight style"
    case inherit
    case initial
    case revert
    case unset
}

public struct FontSynthesis: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-synthesis" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontSynthesis {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontSynthesis {

    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public init(_ value: FontSynthesisValue = .none) {
        self.init(value.rawValue)
    }
}
