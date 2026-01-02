import SGML

public struct RelAttribute: HTMLAttribute {
    public static let name = "rel"

    public enum Value: String, Sendable {
        /// Provides a link to an alternate representation of the document (i.e. print page, translated or mirror)
        case alternate
        /// Provides a link to the author of the document
        case author
        /// Permanent URL used for bookmarking
        case bookmark
        /// Indicates that the referenced document is not part of the same site as the current document
        case external
        /// Provides a link to a help document
        case help
        /// Provides a link to licensing information for the document
        case license
        /// Provides a link to the next document in the series
        case next
        /// Links to an unendorsed document, like a paid link.
        /// ("nofollow" is used by Google, to specify that the Google search spider should not follow that link)
        case nofollow
        /// Requires that any browsing context created by following the hyperlink must not have an opener browsing context
        case noopenero
        /// Makes the referrer unknown. No referer header will be included when the user clicks the hyperlink
        case noreferrer
        /// The previous document in a selection
        case prev
        /// Links to a search tool for the document
        case search
        /// A tag (keyword) for the current document
        case tag
    }

    public var value: String?

    public init(
        _ value: Value
    ) {
        self.value = value.rawValue
    }
}

public protocol RelAttributeModifier {

}

extension RelAttributeModifier where Self: Attributes & Mutable {

    /// Set a rel attribute.
    public func rel(
        _ value: RelAttribute.Value
    ) -> Self {
        setAttribute(RelAttribute(value))
    }
}
