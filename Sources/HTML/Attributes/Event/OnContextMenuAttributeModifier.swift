import SGML

public protocol OnContextMenuAttributeModifier {
    associatedtype OnContextMenuAttributeValueType: AttributeValueRepresentable = String
}

extension OnContextMenuAttributeModifier where Self: Attributes & Mutable {

    public func onContextMenu(
        _ value: OnContextMenuAttributeValueType?
    ) -> Self {
        setAttribute(key: .oncontextmenu, value: value?.attributeValue)
    }
}
