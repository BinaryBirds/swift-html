public struct BorderRightStyle: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of the right border
    public init(_ value: BorderStyle.Value = .none) {
        self.name = "border-right-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
