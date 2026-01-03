import SGML

public protocol StartAttributeModifier {
    associatedtype StartAttributeValueType: AttributeValueRepresentable = Int
}

extension StartAttributeModifier where Self: Attributes & Mutable {

    public func start(

        _ value: StartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.start,
            value: value?.attributeValue
        )
    }
}
