//
//  TextShadow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextShadowValue {
    /// h-shadow    Required. The position of the horizontal shadow. Negative values are allowed    Play it »
    /// v-shadow    Required. The position of the vertical shadow. Negative values are allowed    Play it »
    /// blur-radius    Optional. The blur radius. Default value is 0    Play it »
    /// color    Optional. The color of the shadow. Look at CSS Color Values for a complete list of possible color values    Play it »
    case values(Unit, Unit, Unit, CSSColor)
    /// Default value. No shadow    Play it »
    case none
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let h, let v, let blur, let color):
            return [h.rawValue, v.rawValue, blur.rawValue, color.rawValue]
                .joined(separator: " ")
        case .none:
            return "none"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func TextShadow(_ value: String) -> Property {
    Property(name: "text-shadow", value: value)
}

/// Adds shadow to text
public func TextShadow(_ value: TextShadowValue) -> Property {
    TextShadow(value.rawValue)
}
