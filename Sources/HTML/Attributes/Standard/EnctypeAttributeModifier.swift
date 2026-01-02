import SGML

public enum EnctypeAttributeValue: String, AttributeValueRepresentable
{
    case urlencoded = "application/x-www-form-urlencoded"
    case multipart = "multipart/form-data"
    case plain = "text/plain"
}

public protocol EnctypeAttributeModifier {
    associatedtype EnctypeAttributeValueType: AttributeValueRepresentable =
        EnctypeAttributeValue
}

extension EnctypeAttributeModifier where Self: Attributes & Mutable {

    public func enctype(
        _ value: EnctypeAttributeValueType?
    ) -> Self {
        setAttribute(key: .enctype, value: value?.attributeValue)
    }
}
