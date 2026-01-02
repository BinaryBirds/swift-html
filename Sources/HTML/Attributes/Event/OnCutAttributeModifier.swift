import SGML

public protocol OnCutAttributeModifier {
    associatedtype OnCutAttributeValueType: AttributeValueRepresentable = String
}

extension OnCutAttributeModifier where Self: Attributes & Mutable {

    public func onCut(
        _ value: OnCutAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.cut, value: value?.attributeValue)
    }
}
