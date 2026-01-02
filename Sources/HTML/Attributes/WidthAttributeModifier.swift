import SGML

public protocol WidthAttributeModifier {
    associatedtype WidthAttributeValue: AttributeValueRepresentable = Int
}

extension WidthAttributeModifier where Self: Attributes & Mutable {

    public func width(
        _ value: WidthAttributeValue?
    ) -> Self {
        setAttribute(key: .width, value: value?.attributeValue)
    }
    
    public func width() -> Int? {
        getAttribute(key: .width)
    }
}
