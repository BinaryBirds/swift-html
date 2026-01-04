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

public struct UserSelect: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "user-select" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> UserSelect {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension UserSelect {

    /// Specifies whether the text of an element can be selected
    public init(_ value: UserSelectValue = .auto) {
        self.init(value.rawValue)
    }
}
