public struct HangingPunctuation: Property {
    public enum Value: String, Sendable {
        /// No punctuation mark may be placed outside the line box at the start or at the end of a full line of text
        case none
        /// Punctuation may hang outside the start edge of the first line
        case first
        /// Punctuation may hang outside the end edge of the last line
        case last
        /// Punctuation may hang outside the end edge of all lines if the punctuation does not otherwise fit prior to justification
        case allowEnd = "allow-end"
        /// Punctuation may hang outside the end edge of all lines. If justification is enabled on this line, then it will force the punctuation to hang
        case forceEnd = "force-end"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether a punctuation character may be placed outside the line box
    public init(
        _ value: Value = .none
    ) {
        self.name = "hanging-punctuation"
        self.value = value.rawValue
        self.isImportant = false
    }
}
