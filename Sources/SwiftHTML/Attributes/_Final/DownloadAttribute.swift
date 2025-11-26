public struct DownloadAttribute: HTMLAttribute {
    public var value: String?

    public init() {
        self.value = nil
    }
}

public protocol DownloadAttributeModifier {

}

extension DownloadAttributeModifier where Self: Attributes & Mutable {

    public func download(  //        _ value: Bool = true
        ) -> Self
    {
        //        if value {
        setAttribute(DownloadAttribute())
        //        }
        //        else {
        //            removeAttribute(DownloadAttribute.self)
        //        }
    }
}
