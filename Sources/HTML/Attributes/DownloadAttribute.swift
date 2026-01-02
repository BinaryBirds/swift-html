import SGML

public protocol DownloadAttributeModifier {
    associatedtype DownloadAttributeValue: AttributeValueRepresentable = String
}

extension DownloadAttributeModifier where Self: Attributes & Mutable {

    public func download(
        _ value: DownloadAttributeValue?
    ) -> Self {
        setAttribute(name: "download", value: value?.attributeValue)
    }

    public func download() -> Self {
        setAttribute(name: "download", value: nil)
    }
}
