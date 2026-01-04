//
//  FontKerning.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontKerningValue: String {
    /// Default. The browser determines whether font kerning should be applied or not
    case auto
    /// Specifies that font kerning is applied
    case normal
    /// Specifies that font kerning is not applied
    case none
}

public struct FontKerning: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-kerning" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontKerning {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontKerning {

    /// Controls the usage of the kerning information (how letters are spaced)
    public init(_ value: FontKerningValue = .auto) {
        self.init(value.rawValue)
    }
}
