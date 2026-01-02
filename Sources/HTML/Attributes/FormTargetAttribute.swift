import SGML

public struct FormTargetAttribute: HTMLAttribute {

    public enum Value {
        /// Opens the linked document in a new window or tab
        case blank
        /// Opens the linked document in the same frame as it was clicked (this is default)
        case `default`
        /// Opens the linked document in the parent frame
        case parent
        /// Opens the linked document in the full body of the window
        case top
        /// Opens the linked document in the named iframe
        case frame(String)

        var rawValue: String {
            switch self {
            case .blank:
                return "_blank"
            case .`default`:
                return "_self"
            case .parent:
                return "_parent"
            case .top:
                return "_top"
            case .frame(let name):
                return name
            }
        }
    }

    public var value: String?

    public init(
        _ value: FormTargetAttribute.Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol FormTargetAttributeModifier {

}

extension FormTargetAttributeModifier where Self: Attributes & Mutable {

    public func formTarget(
        _ value: FormTargetAttribute.Value?
    ) -> Self {
        setAttribute(FormTargetAttribute(value))
    }
}
