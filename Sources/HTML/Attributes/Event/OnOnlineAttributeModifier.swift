import SGML

public protocol OnOnlineAttributeModifier {
    associatedtype OnOnlineAttributeValueType: AttributeValueRepresentable = String
}

extension OnOnlineAttributeModifier where Self: Attributes & Mutable {

    public func onOnline(
        _ value: OnOnlineAttributeValueType?
    ) -> Self {
        setAttribute(key: .ononline, value: value?.attributeValue)
    }
}
