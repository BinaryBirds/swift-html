import SGML

//public enum Draggable: String {
//    /// Specifies that the element is draggable
//    case `true`
//    /// Specifies that the element is not draggable
//    case `false`
//    /// Uses the default behavior of the browser
//    case auto
//}

public protocol DraggableAttributeModifier {
    associatedtype DraggableAttributeValueType: AttributeValueRepresentable =
        String
}

extension DraggableAttributeModifier where Self: Attributes & Mutable {

    public func draggable(
        _ value: DraggableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.draggable,
            value: value?.attributeValue
        )
    }
}
