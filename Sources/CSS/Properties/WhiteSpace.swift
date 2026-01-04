//
//  WhiteSpace.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WhiteSpaceValue: String {
    /// Sequences of whitespace will collapse into a single whitespace. Text will wrap when necessary. This is default
    case normal
    /// Sequences of whitespace will collapse into a single whitespace. Text will never wrap to the next line. The text continues on the same line until a <br> tag is encountered
    case nowrap
    /// Whitespace is preserved by the browser. Text will only wrap on line breaks. Acts like the <pre> tag in HTML
    case pre
    /// Sequences of whitespace will collapse into a single whitespace. Text will wrap when necessary, and on line breaks
    case preLine = "pre-line"
    /// Whitespace is preserved by the browser. Text will wrap when necessary, and on line breaks
    case preWrap = "pre-wrap"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct WhiteSpace: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "white-space" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> WhiteSpace {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension WhiteSpace {

    /// Specifies how white-space inside an element is handled
    public init(_ value: WhiteSpaceValue = .normal) {
        self.init(value.rawValue)
    }
}
