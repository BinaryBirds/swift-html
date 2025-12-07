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

public func FontFeatureSettings(_ value: String) -> Property {
    Property(name: "font-feature-settings", value: value)
}

/// Allows control over advanced typographic features in OpenType fonts
public func FontFeatureSettings(_ value: FontFeatureSettingsValue = .normal)
    -> Property
{
    FontFeatureSettings(value.rawValue)
}
