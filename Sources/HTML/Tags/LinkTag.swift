import SGML

/// The `<link>` tag defines the relationship between the current document and an external resource.
///
/// The `<link>` tag is most often used to link to external style sheets.
///
/// The `<link>` element is an empty element, it contains attributes only.
public struct Link:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    HrefAttributeModifier,
    CrossOriginAttributeModifier,
    HrefLangAttributeModifier,
    MediaAttributeModifier,
    IntegrityAttributeModifier,
    TypeAttributeModifier,
    ReferrerPolicyAttributeModifier,
    BlockingAttributeModifier,
    AsAttributeModifier,
    RelAttributeModifier,
    DisabledAttributeModifier,
    SizesAttributeModifier,
    FetchPriorityAttributeModifier,
    ImageSrcSetAttributeModifier,
    ImageSizesAttributeModifier,
    ColorAttributeModifier,
    // categories
    MetadataContent,
    FlowContent,
    PhrasingContent
{
    public var attributes: AttributeStore

    // MARK: -

    public enum Rel: String, AttributeValueRepresentable {
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

    public typealias RelAttributeValueType = Rel

    // MARK: -

    public init(
        rel value: RelAttributeValueType
    ) {
        self.attributes = .init()
        self = rel(value)
    }
}
