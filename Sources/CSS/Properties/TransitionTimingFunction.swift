public struct TransitionTimingFunction: Property {
    public enum Value: Sendable {

        /// Default value. Specifies a transition effect with a slow start, then fast, then end slowly (equivalent to cubic-bezier(0.25,0.1,0.25,1))
        case ease
        /// Specifies a transition effect with the same speed from start to end (equivalent to cubic-bezier(0,0,1,1))
        case linear
        /// Specifies a transition effect with a slow start (equivalent to cubic-bezier(0.42,0,1,1))
        case easeIn
        /// Specifies a transition effect with a slow end (equivalent to cubic-bezier(0,0,0.58,1))
        case easeOut
        /// Specifies a transition effect with a slow start and end (equivalent to cubic-bezier(0.42,0,0.58,1))
        case easeInOut
        /// Equivalent to steps(1, start)
        case stepStart
        /// Equivalent to steps(1, end)
        case stepEnd
        /// Specifies a stepping function, with two parameters.
        /// The first parameter specifies the number of intervals in the function.
        /// It must be a positive integer (greater than 0).
        /// The second parameter, which is optional, is either the value "start" or "end", and specifies the point at which the change of values occur within the interval.
        /// If the second parameter is omitted, it is given the value "end"
        case steps(Int, Int?)
        /// Define your own values in the cubic-bezier function.
        /// Possible values are numeric values from 0 to 1
        case cubicBezier(Double, Double, Double, Double)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .ease:
                return "ease"
            case .linear:
                return "linear"
            case .easeIn:
                return "ease-in"
            case .easeOut:
                return "ease-out"
            case .easeInOut:
                return "ease-in-out"
            case .stepStart:
                return "step-start"
            case .stepEnd:
                return "step-end"
            case .steps(let intervals, let startOrEnd):
                var suffix = ""
                if let val = startOrEnd {
                    suffix = ",\(val)"
                }
                return "steps(\(intervals)" + suffix + ")"
            case .cubicBezier(let a, let b, let c, let d):
                return "cubic-bezier(\(a),\(b),\(c),\(d))"
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

    /// Specifies the speed curve of the transition effect
    public init(
        _ value: Value = .ease
    ) {
        self.name = "transition-timing-function"
        self.value = value.rawValue
        self.isImportant = false
    }
}
