import SGML

public protocol UsemapAttributeModifier {
    associatedtype UsemapAttributeValueType: AttributeValueRepresentable = String
}

extension UsemapAttributeModifier where Self: Attributes & Mutable {

    public func usemap(
        _ value: UsemapAttributeValueType?
    ) -> Self {
        setAttribute(key: .usemap, value: value?.attributeValue)
    }
}
