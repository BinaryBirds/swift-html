public struct OverflowY: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public init(_ value: Overflow.Value = .visible) {
        self.name = "overflow-y"
        self.value = value.rawValue
        self.isImportant = false
    }
}
