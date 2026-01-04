public struct PaddingTop: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the top padding of an element
    public init(_ value: Padding.Value = .length(.zero)) {
        self.name = "padding-top"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the top padding of an element
    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
