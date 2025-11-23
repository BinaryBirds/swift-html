import SGML

public struct IntegrityAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String?
    ) {
        self.value = value
    }
}
