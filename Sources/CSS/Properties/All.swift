public struct All: Property {
    public enum Value: String, Sendable {
        /// Changes all the properties applied to the element or the element's parent to their initial value
        case initial
        /// Changes all the properties applied to the element or the element's parent to their parent value
        case inherit
        /// Changes all the properties applied to the element or the element's parent to their parent value if they are inheritable or to their initial value if not
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Resets all properties (except unicode-bidi and direction)
    public init(
        _ value: Value
    ) {
        self.name = "all"
        self.value = value.rawValue
        self.isImportant = false
    }
}
