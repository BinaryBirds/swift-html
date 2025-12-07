//
//  PerspectiveOrigin.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PerspectiveOriginValue {

    // @TODO: add keyword support
    // https://www.w3schools.com/cssref/css3_pr_perspective-origin.asp
    //    enum XValues {
    //        case left
    //        case center
    //        case right
    //    }
    //
    //    enum YValues {
    //        case top
    //        case center
    //        case bottom
    //    }
    //    case axis(XValues, YValues?)

    /// Defining where the view is placed at the xy-axis
    case axis(Unit, Unit?)
    /// Default value. Same as 0. The perspective is not set
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .axis(let x, let y):
            return "\(x.rawValue) \(y?.rawValue ?? "50%")"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func PerspectiveOrigin(_ value: String) -> Property {
    Property(name: "perspective-origin", value: value)
}

/// Defines at which position the user is looking at the 3D-positioned element
public func PerspectiveOrigin(
    _ value: PerspectiveOriginValue = .axis(.percent(50), .percent(50))
) -> Property {
    PerspectiveOrigin(value.rawValue)
}
