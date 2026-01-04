public struct BorderStyle: Property {
    public enum Value: String, Sendable {
        /// Specifies no border. This is default    Play it »
        case none
        /// The same as "none", except in border conflict resolution for table elements    Play it »
        case hidden
        /// Specifies a dotted border    Play it »
        case dotted
        /// Specifies a dashed border    Play it »
        case dashed
        /// Specifies a solid border    Play it »
        case solid
        /// Specifies a double border    Play it »
        case double
        /// Specifies a 3D grooved border. The effect depends on the border-color value    Play it »
        case groove
        /// Specifies a 3D ridged border. The effect depends on the border-color value    Play it »
        case ridge
        /// Specifies a 3D inset border. The effect depends on the border-color value    Play it »
        case inset
        /// Specifies a 3D outset border. The effect depends on the border-color value    Play it »
        case outset
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of the four borders
    public init(
        _ value: Value = .none
    ) {
        self.name = "border-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
