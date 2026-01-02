import SGML

public protocol FormEnctypeAttributeModifier {
    associatedtype FormEnctypeAttributeValueType: AttributeValueRepresentable = EnctypeAttributeValue
}

extension FormEnctypeAttributeModifier where Self: Attributes & Mutable {

    public func formEnctype(
        _ value: FormEnctypeAttributeValueType?
    ) -> Self {
        setAttribute(key: .formenctype, value: value?.attributeValue)
    }
}
