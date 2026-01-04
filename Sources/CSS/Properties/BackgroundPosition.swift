//
//  BackgroundPosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundPositionValue {
    /// left center
    case left
    /// left top
    case leftTop
    /// left center
    case leftCenter
    /// left bottom
    case leftBottom
    /// right center
    case right
    /// right top
    case rightTop
    /// right center
    case rightCenter
    /// right bottom
    case rightBottom
    /// center center
    case center
    /// center top
    case centerTop
    /// center center
    case centerCenter
    /// center bottom
    case centerBottom
    /// The first value is the horizontal position and the second value is the vertical.
    /// The top left corner is 0% 0%. The right bottom corner is 100% 100%.
    /// If you only specify one value, the other value will be 50%. .
    /// Default value is: 0% 0%
    case percent(Double, Double?)
    /// The first value is the horizontal position and the second value is the vertical.
    /// The top left corner is 0 0.
    /// Units can be pixels (0px 0px) or any other CSS units.
    /// If you only specify one value, the other value will be 50%.
    /// You can mix % and positions
    case position(Unit, Unit?)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .left:
            return "left"
        case .leftTop:
            return "left top"
        case .leftCenter:
            return "left center"
        case .leftBottom:
            return "left bottom"
        case .right:
            return "right"
        case .rightTop:
            return "right top"
        case .rightCenter:
            return "right center"
        case .rightBottom:
            return "right bottom"
        case .center:
            return "center"
        case .centerTop:
            return "center"
        case .centerCenter:
            return "center center"
        case .centerBottom:
            return "center bottom"
        case .percent(let x, let y):
            return "\(x)% \(y ?? 50)%"
        case .position(let x, let y):
            return "\(x.rawValue) \(y?.rawValue ?? "50%")"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct BackgroundPosition: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background-position" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackgroundPosition {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackgroundPosition {

    /// Specifies the position of a background image
    public init(_ value: BackgroundPositionValue) {
        self.init(value.rawValue)
    }
}
