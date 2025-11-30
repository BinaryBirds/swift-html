import DOM

/// The `<script>` tag is used to embed a client-side script (JavaScript).
///
/// The `<script>` element either contains scripting statements, or it points to an external script file through the src attribute.
///
/// Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.
public struct Script:
    HTMLTag,
    Attributes,
    /// attribute modifiers
    GlobalAttributeModifier,
    TypeAttributeModifier,
    SrcAttributeModifier,
    ReferrerPolicyAttributeModifier
//    ✅type — Type of script
//    ✅src — Address of the resource
//    nomodule — Prevents execution in user agents that support module scripts
//    async — Execute script when available, without blocking while fetching
//    defer — Defer script execution
//    blocking — Whether the element is potentially render-blocking
//    crossorigin — How the element handles crossorigin requests
//    ✅referrerpolicy — Referrer policy for fetches initiated by the element
//    integrity — Integrity metadata used in Subresource Integrity checks [SRI]
//    fetchpriority — Sets the priority for fetches initiated by the element
{

    public enum `Type`: String {
        case javascript = "text/javascript"
    }

    private enum Kind {
        case standard(String)
        case void
    }

    private var kind: Kind

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata,
            .flow,
            .phrasing,
            //            Script-supporting element.
        ]
    }

    public init(
        _ contents: String
    ) {
        self.attributes = .init()
        self.kind = .standard(contents)
    }

    public init() {
        self.kind = .void
        self.attributes = .init()
    }

    public var node: Node {
        switch kind {
        case .standard(let contents):
            StandardNode(
                name: Self.name,
                properties: attributes.properties,
                children: [
                    TextNode(value: contents)
                ]
            )
        case .void:
            ShortNode(
                name: Self.name,
                properties: attributes.properties
            )
        }
    }
}

//    /// Specifies that the script is executed asynchronously (only for external scripts)
//    public func async(_ condition: Bool = true) -> Self {
//        flagAttribute("async", nil, condition)
//    }
//
//    /// Sets the mode of the request to an HTTP CORS Request
//    public func crossorigin(_ value: Crossorigin) -> Self {
//        attribute("crossorigin", value.rawValue)
//    }
//
//    /// Specifies that the script is executed when the page has finished parsing (only for external scripts)
//    public func `defer`(_ condition: Bool = true) -> Self {
//        flagAttribute("defer", nil, condition)
//    }
//
//    /// Allows a browser to check the fetched script to ensure that the code is never loaded if the source has been manipulated
//    public func integrity(_ value: String) -> Self {
//        attribute("integrity", value)
//    }
//
//    // @NOTE: auto capitalize string value?
//    /// Specifies that the script should not be executed in browsers supporting ES2015 modules
//    public func nomodule(_ value: Bool) -> Self {
//        attribute("nomodule", String(value))
//    }
