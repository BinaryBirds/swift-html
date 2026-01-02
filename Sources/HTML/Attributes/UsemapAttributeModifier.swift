import SGML

public protocol UsemapAttributeModifier {
    associatedtype UsemapAttributeValue: AttributeValueRepresentable = String
}

extension UsemapAttributeModifier where Self: Attributes & Mutable {

    public func usemap(
        _ value: UsemapAttributeValue?
    ) -> Self {
        setAttribute(key: .usemap, value: value?.attributeValue)
    }
}
