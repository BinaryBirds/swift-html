import SGML

public protocol FormEnctypeAttributeModifier {
    associatedtype FormEnctypeAttributeValue: AttributeValueRepresentable = EnctypeValue
}

extension FormEnctypeAttributeModifier where Self: Attributes & Mutable {

    public func formEnctype(
        _ value: FormEnctypeAttributeValue?
    ) -> Self {
        setAttribute(key: .formenctype, value: value?.attributeValue)
    }
}
