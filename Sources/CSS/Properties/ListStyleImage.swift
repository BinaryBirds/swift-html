//
//  ListStyleImage.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ListStyleImageValue {
    /// A normal line height. This is default
    case none
    /// A number that will be multiplied with the current font-size to set the line height
    case url(String)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .url(let value):
            return "url('\(value)')"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct ListStyleImage: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "list-style-image" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ListStyleImage {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ListStyleImage {

    /// Specifies an image as the list-item marker
    public init(_ value: ListStyleImageValue) {
        self.init(value.rawValue)
    }
}
