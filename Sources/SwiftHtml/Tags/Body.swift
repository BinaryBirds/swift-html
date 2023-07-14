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
    
    override open class var name: String { .init(Body.self) }
    
    public private(set) var scripts: [Script]?
    public private(set) var eventFuncs: [Event:JSFunction]?
    
    public init(scripts: [Script]? = nil,
                eventFuncs efs: [EventFunction]? = nil,
                _ children: [Tag]? = nil) {
        self.scripts = scripts ?? []
        // convert [EventFunction] to [Event:JSFunction]
        self.eventFuncs = efs != nil ? .init(efs!) : nil
        let temp = Tag {
            if let children = children { children }
            if let scripts = scripts { scripts }
        }
        super.init(temp.children)
        _ = self
            .onEvent(eventFuncs?[.onAfterPrint])
            .onEvent(eventFuncs?[.onBeforePrint])
            .onEvent(eventFuncs?[.onBeforeUnload])
            .onEvent(eventFuncs?[.onError])
            .onEvent(eventFuncs?[.onHashChange])
            .onEvent(eventFuncs?[.onLoad])
            .onEvent(eventFuncs?[.onMessage])
            .onEvent(eventFuncs?[.onOffline])
            .onEvent(eventFuncs?[.onOnline])
            .onEvent(eventFuncs?[.onPageHide])
            .onEvent(eventFuncs?[.onPageShow])
            .onEvent(eventFuncs?[.onPopState])
            .onEvent(eventFuncs?[.onResize])
            .onEvent(eventFuncs?[.onStorage])
            .onEvent(eventFuncs?[.onUnload])
    }
    
    public convenience init(scripts: [Script] = [],
                            @TagBuilder _ builder: () -> Tag) {
        self.init(scripts: scripts, [builder()])
    }
}
