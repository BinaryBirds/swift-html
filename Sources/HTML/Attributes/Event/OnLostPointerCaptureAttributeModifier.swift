import SGML

public protocol OnLostPointerCaptureAttributeModifier {
    associatedtype OnLostPointerCaptureAttributeValueType: AttributeValueRepresentable = String
}

extension OnLostPointerCaptureAttributeModifier where Self: Attributes & Mutable {

    public func onLostPointerCapture(
        _ value: OnLostPointerCaptureAttributeValueType?
    ) -> Self {
        setAttribute(key: .onlostpointercapture, value: value?.attributeValue)
    }
}
