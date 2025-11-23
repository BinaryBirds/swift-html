public struct TargetAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        /// Opens the link in a new window or tab.
        case blank = "_blank"
        /// Default; opens the link in the same frame as it was clicked.
        case `self` = "_self"
        /// Opens the link in the parent frame.
        case parent = "_parent"
        /// Opens the link in the full body of the window.
        case top = "_top"
    }

    public var value: String?

    public init(
        _ value: Value
    ) {
        self.value = value.rawValue
    }
}
