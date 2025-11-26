/// The `<link>` tag defines the relationship between the current document and an external resource.
///
/// The `<link>` tag is most often used to link to external style sheets.
///
/// The `<link>` element is an empty element, it contains attributes only.
public struct Link:
    HTMLShortTag,
    MediaAttributeModifier
{

    public struct Rel: Attribute {

        public enum Value: String, Sendable {
            /// Provides a link to an alternate version of the document (i.e. print page, translated or mirror).
            ///
            /// Example: `<link rel="alternate" type="application/atom+xml" title="W3Schools News" href="/blog/news/atom">`
            case alternate
            /// Provides a link to the author of the document
            case author
            /// canonical url
            case canonical
            /// Specifies that the browser should preemptively perform DNS resolution for the target resource's origin
            case dnsPrefetch = "dns-prefetch"
            /// Provides a link to a help document. Example: `<link rel="help" href="/help/">`
            case help
            /// Imports an icon to represent the document.
            ///
            /// Example: `<link rel="icon" href="/favicon.ico" type="image/x-icon">`
            case icon
            /// Provides a link to copyright information for the document
            case license
            /// Provides a link to the next document in the series
            case next
            /// Provides the address of the pingback server that handles pingbacks to the current document
            case pingback
            /// Specifies that the browser should preemptively connect to the target resource's origin.
            case preconnect
            /// Specifies that the browser should preemptively fetch and cache the target resource as it is likely to be required for a follow-up navigation
            case prefetch
            /// Specifies that the browser agent must preemptively fetch and cache the target resource for current navigation according to the destination given by the "as" attribute (and the priority associated with that destination).
            case preload
            /// Specifies that the browser should pre-render (load) the specified webpage in the background.
            ///
            /// So, if the user navigates to this page, it speeds up the page load (because the page is already loaded).
            /// Warning! This wastes the user's bandwidth!
            /// Only use prerender if you are absolutely sure that the webpage is required at some point in the user's journey
            case prerender
            /// Indicates that the document is a part of a series, and that the previous document in the series is the referenced document
            case prev
            /// Provides a link to a resource that can be used to search through the current document and its related pages.
            case search
            /// Imports a style sheet
            case stylesheet

            /// https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html#//apple_ref/doc/uid/TP40002051-CH3-SW6
            case appleTouchIcon = "apple-touch-icon"
            case appleTouchStartupImage = "apple-touch-startup-image"
            case appleMobileWebAppTitle = "apple-mobile-web-app-title"
            case shortcutIcon = "shortcut icon"
            case manifest
            case maskIcon = "mask-icon"
        }

        public var value: String?

        public init(
            _ value: Value
        ) {
            self.value = value.rawValue
        }
    }

    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata
        ]
    }

    public init(
        rel value: Rel.Value
    ) {
        self.attributes = .init()
        self = addAttribute(Rel(value))
    }
}

extension Link {

    /// Specifies the location of the linked document.
    public func href(
        _ value: String?
    ) -> Self {
        setAttribute(HrefAttribute(value))
    }

    /// Specifies how the element handles cross-origin requests.
    public func crossorigin(
        _ value: CrossoriginAttribute.Value
    ) -> Self {
        setAttribute(CrossoriginAttribute(value))
    }

    /// Allows a browser to check the fetched link to ensure that the code is never loaded if the source has been manipulated.
    public func integrity(
        _ value: String
    ) -> Self {
        setAttribute(IntegrityAttribute(value))
    }

    //
    //    /// Specifies the language of the text in the linked document
    //    public func hreflang(_ value: String) -> Self {
    //        attribute("hreflang", value)
    //    }

    //
    //    /// Specifies which referrer to use when fetching the resource
    //    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
    //        attribute("referrerpolicy", value.rawValue)
    //    }
    //
    //
    //    /// Specifies the size of the linked resource. Only for `rel="icon"`
    //    public func sizes(_ value: String) -> Self {
    //        attribute("sizes", value)
    //    }
    //
    //    /// Specifies the size of the linked resource. For example `57x57` if the value is `57`.
    //    public func sizes(_ value: Int) -> Self {
    //        sizes(String(value) + "x" + String(value))
    //    }
    //
    //    /// Specifies the media type of the linked document
    //    public func type(_ value: String) -> Self {
    //        attribute("type", value)
    //    }
    //
}
