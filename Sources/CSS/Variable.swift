/// Creates a new CSS variable with the given name and value
public struct Variable: Property {
    public var name: String
    public var value: String
    public var isImportant: Bool

    public init(
        _ name: String,
        _ value: String,
        isImportant: Bool = false
    ) {
        self.name = "--" + name
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Variable {
        guard !isImportant else {
            return self
        }
        return .init(name, value, isImportant: true)
    }
}

extension String {
    public var `variable`: String {
        "var(--" + self + ")"
    }
}
