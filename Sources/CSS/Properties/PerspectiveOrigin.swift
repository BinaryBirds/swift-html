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

public struct PerspectiveOrigin: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "perspective-origin" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PerspectiveOrigin {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PerspectiveOrigin {

    /// Defines at which position the user is looking at the 3D-positioned element
    public init(
        _ value: PerspectiveOriginValue = .axis(.percent(50), .percent(50))
    ) {
        self.init(value.rawValue)
    }
}
