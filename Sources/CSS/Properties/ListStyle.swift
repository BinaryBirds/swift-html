//
//  ListStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ListStyleValue {
    /// list-style-type    Specifies the type of list-item marker. Default value is "disc"
    /// list-style-position    Specifies where to place the list-item marker. Default value is "outside"
    /// list-style-image    Specifies the type of list-item marker. Default value is "none"
    case values(ListStyleTypeValue, ListStylePositionValue, ListStyleImageValue)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let type, let position, let image):
            return [type.rawValue, position.rawValue, image.rawValue]
                .joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct ListStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "list-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ListStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ListStyle {

    /// Sets all the properties for a list in one declaration
    public init(_ value: ListStyleValue) {
        self.init(value.rawValue)
    }
}
