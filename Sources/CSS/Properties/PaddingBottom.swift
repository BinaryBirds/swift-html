public struct PaddingBottom: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the bottom padding of an element
    public init(_ value: Padding.Value = .length(0)) {
        self.name = "padding-bottom"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the bottom padding of an element
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }
}
