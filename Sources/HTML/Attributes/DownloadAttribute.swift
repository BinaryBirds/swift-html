import SGML

public struct DownloadAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}

public protocol DownloadAttributeModifier {

}

extension DownloadAttributeModifier where Self: Attributes & Mutable {

    public func download(
        _ value: String?
    ) -> Self {
        setAttribute(DownloadAttribute(value))
    }

    public func download() -> Self {
        setAttribute(DownloadAttribute(nil))
    }
}
