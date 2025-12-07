//
//  UserSelect.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum UserSelectValue: String {
    /// Default. Text can be selected if the browser allows it
    case auto
    /// Prevent text selection
    case none
    /// The text can be selected by the user
    case text
    /// Text selection is made with one click instead of a double-click
    case all
}

public func UserSelect(_ value: String) -> Property {
    Property(name: "user-select", value: value)
}

/// Specifies whether the text of an element can be selected
public func UserSelect(_ value: UserSelectValue = .auto) -> Property {
    UserSelect(value.rawValue)
}
