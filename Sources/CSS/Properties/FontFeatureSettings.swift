//
//  FontFeatureSettings.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontFeatureSettingsValue {
    /// Default. Use the default settings to lay out text
    case normal
    /// Format: string [1|0|on|off] Always a string of 4 ASCII characters.
    case featureValue(String)

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .featureValue(let value):
            return value
        }
    }
}

public struct FontFeatureSettings: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-feature-settings" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontFeatureSettings {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontFeatureSettings {

    /// Allows control over advanced typographic features in OpenType fonts
    public init(_ value: FontFeatureSettingsValue = .normal) {
        self.init(value.rawValue)
    }
}
