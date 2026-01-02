import SGML

public protocol RoleAttributeModifier {
    associatedtype RoleAttributeValueType: AttributeValueRepresentable = String
}

extension RoleAttributeModifier where Self: Attributes & Mutable {

    public func role(
        _ value: RoleAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.role, value: value?.attributeValue)
    }
}
