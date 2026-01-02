import SGML

public struct UsemapAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        if let value, !value.isEmpty {
            self.value = "#" + value
        }
        else {
            self.value = nil
        }
    }
}

public protocol UsemapAttributeModifier {

}

extension UsemapAttributeModifier where Self: Attributes & Mutable {

    public func usemap(
        _ value: String?
    ) -> Self {
        setAttribute(UsemapAttribute(value))
    }
}
