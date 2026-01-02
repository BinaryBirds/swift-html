import SGML

public protocol OnGotPointerCaptureAttributeModifier {
    associatedtype OnGotPointerCaptureAttributeValueType: AttributeValueRepresentable = String
}

extension OnGotPointerCaptureAttributeModifier where Self: Attributes & Mutable {

    public func onGotPointerCapture(
        _ value: OnGotPointerCaptureAttributeValueType?
    ) -> Self {
        setAttribute(key: .ongotpointercapture, value: value?.attributeValue)
    }
}
