import SGML

enum AttributeKeys: String {
    case action
    case alt
    case autocomplete
    case autofocus
    case autoplay
    case blocking
    case checked
    case cite
    case `class`
    case closedby
    case colspan
    case controls
    case crossorigin
    case data
    case datetime
    case dir
    case disabled
    case download
    case enctype
    case fetchpriority
    case `for`
    case form
    case formaction
    case formenctype
    case formmethod
    case formtarget
    case height
    case href
    case hreflang
    case id
    case integrity
    case label
    case loading
    case loop
    case media
    case method
    case multiple
    case muted
    case name
    case `open`
    case ping
    case placeholder
    case preload
    case readonly
    case referrerpolicy
    case rel
    case required
    case rowspan
    case size
    case sizes
    case span
    case spellcheck
    case src
    case srcset
    case style
    case target
    case title
    case translate
    case type
    case typemustmatch
    case usemap
    case value
    case width
}

extension Attributes where Self: Mutable {
    
    func setAttribute(
        key: AttributeKeys,
        value: String? = nil
    ) -> Self {
        setAttribute(name: key.rawValue, value: value)
    }

    func addAttribute(
        key: AttributeKeys,
        value: String?
    ) -> Self {
        addAttribute(name: key.rawValue, value: value)
    }

    func removeAttribute(
        key: AttributeKeys
    ) -> Self {
        removeAttribute(name: key.rawValue)
    }

    func removeAttribute(
        key: AttributeKeys,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        removeAttribute(
            name: key.rawValue,
            value: value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
    }
    
    func getAttribute(
        key: AttributeKeys
    ) -> String? {
        getAttribute(name: key.rawValue)
    }

    func hasAttribute(
        key: AttributeKeys
    ) -> Bool {
        hasAttribute(name: key.rawValue)
    }

    func hasAttribute(
        key: AttributeKeys,
        value: String?
    ) -> Bool {
        hasAttribute(name: key.rawValue, value: value)
    }

    func setAttribute(
        key: AttributeKeys,
        value: Int?
    ) -> Self {
        setAttribute(name: key.rawValue, value: value.map(String.init))
    }
    
    func getAttribute(
        key: AttributeKeys
    ) -> Int? {
        getAttribute(name: key.rawValue).flatMap { Int($0) }
    }    
}
