import SGML

public protocol OnAfterPrintAttributeModifier {
    associatedtype OnAfterPrintAttributeValueType: AttributeValueRepresentable = String
}

extension OnAfterPrintAttributeModifier where Self: Attributes & Mutable {

    public func onAfterPrint(
        _ value: OnAfterPrintAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.onafterprint, value: value?.attributeValue)
    }
}
