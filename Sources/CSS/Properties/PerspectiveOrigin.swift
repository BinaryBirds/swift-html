public struct PerspectiveOrigin: Property {
    public enum Value: Sendable {

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
        case axis(UnitRepresentable, UnitRepresentable?)
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

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Defines at which position the user is looking at the 3D-positioned element
    public init(
        _ value: Value = .axis(50.percent, 50.percent)
    ) {
        self.name = "perspective-origin"
        self.value = value.rawValue
        self.isImportant = false
    }
}
