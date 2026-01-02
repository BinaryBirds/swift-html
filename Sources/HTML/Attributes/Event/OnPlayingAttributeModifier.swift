import SGML

public protocol OnPlayingAttributeModifier {
    associatedtype OnPlayingAttributeValueType: AttributeValueRepresentable = String
}

extension OnPlayingAttributeModifier where Self: Attributes & Mutable {

    public func onPlaying(
        _ value: OnPlayingAttributeValueType?
    ) -> Self {
        setAttribute(key: .onplaying, value: value?.attributeValue)
    }
}
