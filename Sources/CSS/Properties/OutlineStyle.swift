public struct OutlineStyle: Property {
    public enum Value: String, Sendable {
        /// Specifies no outline. This is default
        case none
        /// Specifies a hidden outline
        case hidden
        /// Specifies a dotted outline
        case dotted
        /// Specifies a dashed outline
        case dashed
        /// Specifies a solid outline
        case solid
        /// Specifies a double outliner
        case double
        /// Specifies a 3D grooved outline. The effect depends on the outline-color value
        case groove
        /// Specifies a 3D ridged outline. The effect depends on the outline-color value
        case ridge
        /// Specifies a 3D inset outline. The effect depends on the outline-color value
        case inset
        /// Specifies a 3D outset outline. The effect depends on the outline-color value
        case outset
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of an outline
    public init(
        _ value: Value = .none
    ) {
        self.name = "outline-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
