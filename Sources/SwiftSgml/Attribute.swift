//
//  Attribute.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Attribute {

    public var key: String
    public var value: String?
    
    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }    
}

extension Attribute {
    public init(_ key: AttributeKey, _ value: String? = nil) {
        self.init(key: key.rawValue, value: value)
    }
}

public enum AttributeKey: String {
	case accept
	case accept-charset
	case accesskey
	case action
	case align
	case allow
	case alt
	case async
	case autocapitalize
	case autocomplete
	case autofocus
	case autoplay
	case background
	case bgcolor
	case border
	case buffered
	case capture
	case challenge
	case charset
	case checked
	case cite
	case class
	case code
	case codebase
	case color
	case cols
	case colspan
	case content
	case contenteditable
	case contextmenu
	case controls
	case coords
	case crossorigin
	case csp
	case data
	case data-*
	case datetime
	case decoding
	case default
	case defer
	case dir
	case dirname
	case disabled
	case download
	case draggable
	case enctype
	case enterkeyhint
	case for
	case form
	case formaction
	case formenctype
	case formmethod
	case formnovalidate
	case formtarget
	case headers
	case height
	case hidden
	case high
	case href
	case hreflang
	case http-equiv
	case icon
	case id
	case importance
	case integrity
	case intrinsicsize
	case inputmode
	case ismap
	case itemprop
	case keytype
	case kind
	case label
	case lang
	case language
	case loading
	case list
	case loop
	case low
	case manifest
	case max
	case maxlength
	case minlength
	case media
	case method
	case min
	case multiple
	case muted
	case name
	case novalidate
	case open
	case optimum
	case pattern
	case ping
	case placeholder
	case poster
	case preload
	case radiogroup
	case readonly
	case referrerpolicy
	case rel
	case required
	case reversed
	case rows
	case rowspan
	case sandbox
	case scope
	case scoped
	case selected
	case shape
	case size
	case sizes
	case slot
	case span
	case spellcheck
	case src
	case srcdoc
	case srclang
	case srcset
	case start
	case step
	case style
	case summary
	case tabindex
	case target
	case title
	case translate
	case type
	case usemap
	case value
	case width
	case wrap
}
