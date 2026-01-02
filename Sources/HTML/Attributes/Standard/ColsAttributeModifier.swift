import SGML

public protocol ColsAttributeModifier {
    associatedtype ColsAttributeValueType: AttributeValueRepresentable = String
}

extension ColsAttributeModifier where Self: Attributes & Mutable {

    public func cols(

        _ value: ColsAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.cols, value: value?.attributeValue)
    }
}
