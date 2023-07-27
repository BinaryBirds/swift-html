//
//  Body.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<body>` tag defines the document's body.
/// 
/// The `<body>` element contains all the contents of an HTML document, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.
/// 
/// **Note:** There can only be one `<body>` element in an HTML document.
open class Body: StandardTag {
    
    override open class var name: String { .init(describing: Body.self).lowercased() }
    
    public convenience init(scripts: [Script] = [],
                            eventFunctions: [Attribute.EventFunction] = [],
                            _ children: [Tag]? = nil) {
        let temp = Tag {
            children ?? []
            scripts
        }
        self.init(attributes: nil, temp.children)   // attributes parameter included to disambiguate init()
        self.onEvents(eventFunctions)
    }
    
    public convenience init(scripts: [Script] = [],
                            eventFunctions: [Attribute.EventFunction] = [],
                            @TagBuilder _ builder: () -> Tag) {
        self.init(scripts: scripts,
                  eventFunctions: eventFunctions,
                  [builder()])
    }
}
