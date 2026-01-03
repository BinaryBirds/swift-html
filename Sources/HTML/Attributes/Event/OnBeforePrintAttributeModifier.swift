import SGML

public protocol OnBeforePrintAttributeModifier {
    associatedtype
        OnBeforePrintAttributeValueType: AttributeValueRepresentable = String
}

extension OnBeforePrintAttributeModifier where Self: Attributes & Mutable {

    public func onBeforePrint(
        _ value: OnBeforePrintAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.beforePrint,
            value: value?.attributeValue
        )
    }
}
