//
//  Link.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<link>` tag defines the relationship between the current document and an external resource.
/// 
/// The `<link>` tag is most often used to link to external style sheets.
/// 
/// The `<link>` element is an empty element, it contains attributes only.
public final class Link: Tag {

    public init(rel: Rel) {
        let node = Node(type: .empty, name: "link", attributes: [Attribute(key: "rel", value: rel.rawValue)])
        super.init(node)
    }
}

public extension Link {
    enum Rel: String {
        /// Provides a link to an alternate version of the document (i.e. print page, translated or mirror).
        ///
        /// Example: `<link rel="alternate" type="application/atom+xml" title="W3Schools News" href="/blog/news/atom">`
        case alternate
        /// Provides a link to the author of the document
        case author
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
    }
    
    /// Specifies how the element handles cross-origin requests
    func crossorigin(_ value: Crossorigin) -> Self {
        node.addOrReplace(Attribute(key: "crossorigin", value: value.rawValue))
        return self
    }
    
    /// Specifies the location of the linked document
    func href(_ url: String) -> Self {
        node.addOrReplace(Attribute(key: "href", value: url))
        return self
    }
    
    /// Specifies the language of the text in the linked document
    func hreflang(_ url: String) -> Self {
        node.addOrReplace(Attribute(key: "hreflang", value: url))
        return self
    }
    
    /// Specifies on what device the linked document will be displayed
    func media(_ url: String) -> Self {
        node.addOrReplace(Attribute(key: "media", value: url))
        return self
    }
    
    /// Specifies which referrer to use when fetching the resource
    func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
        node.addOrReplace(Attribute(key: "referrerpolicy", value: value.rawValue))
        return self
    }

    /// Required. Specifies the relationship between the current document and the linked document
    func rel(_ value: Rel) -> Self {
        node.addOrReplace(Attribute(key: "rel", value: value.rawValue))
        return self
    }
    
    /// Specifies the size of the linked resource. Only for `rel="icon"`
    func sizes(_ url: String) -> Self {
        node.addOrReplace(Attribute(key: "sizes", value: url))
        return self
    }
        
    /// Specifies the media type of the linked document
    func type(_ url: String) -> Self {
        node.addOrReplace(Attribute(key: "type", value: url))
        return self
    }
}
