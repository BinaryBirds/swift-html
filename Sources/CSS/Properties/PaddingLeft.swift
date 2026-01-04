public struct PaddingLeft: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the left padding of an element
    public init(_ value: Padding.Value = .length(0)) {
        self.name = "padding-left"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the left padding of an element
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }
}
