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

public func ListStyle(_ value: String) -> Property {
    Property(name: "list-style", value: value)
}

/// Sets all the properties for a list in one declaration
public func ListStyle(_ value: ListStyleValue) -> Property {
    ListStyle(value.rawValue)
}
