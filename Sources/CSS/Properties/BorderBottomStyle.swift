public struct BorderBottomStyle: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of the bottom border
    public init(_ value: BorderStyle.Value = .none) {
        self.name = "border-bottom-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
