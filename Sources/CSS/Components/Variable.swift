/// Creates a new CSS variable with the given name and value
public func Variable(
    _ name: String,
    _ value: String
) -> Property {
    Property(name: "--" + name, value: value)
}

extension String {
    public var `variable`: String {
        "var(--" + self + ")"
    }
}
