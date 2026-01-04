public struct MarginRight: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    public init(_ value: Margin.Value = .length(.zero)) {
        self.name = "margin-right"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
