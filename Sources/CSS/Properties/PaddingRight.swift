public struct PaddingRight: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the right padding of an element
    public init(_ value: Padding.Value = .length(0)) {
        self.name = "padding-right"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the right padding of an element
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }
}
