import SGML

public enum EnctypeValue: String, Sendable, AttributeValueRepresentable {
    case urlencoded = "application/x-www-form-urlencoded"
    case multipart = "multipart/form-data"
    case plain = "text/plain"
}

public protocol EnctypeAttributeModifier {
    associatedtype EnctypeAttributeValue: AttributeValueRepresentable = EnctypeValue
}

extension EnctypeAttributeModifier where Self: Attributes & Mutable {

    public func enctype(
        _ value: EnctypeAttributeValue?
    ) -> Self {
        setAttribute(key: .enctype, value: value?.attributeValue)
    }
}
