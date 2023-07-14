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
    public private(set) var eventFuncs: [BodyEvent : [JsFunction]]?
    
    public init(scripts: [Script]? = nil,
                eventFuncs efs: [BodyEvent : [JsFunction]]? = nil,
                _ children: [Tag]? = nil) {
        self.scripts = scripts ?? []
        self.eventFuncs = efs
        let temp = Tag {
            if let children = children { children }
            if let scripts = scripts { scripts }
        }
        super.init(temp.children)
        _ = self
            .onAfterPrint(efs?[.onAfterPrint])
            .onBeforePrint(efs?[.onBeforePrint])
            .onBeforeUnload(efs?[.onBeforeUnload])
            .onError(efs?[.onError])
            .onHashChange(efs?[.onHashChange])
            .onLoad(efs?[.onLoad])
            .onMessage(efs?[.onMessage])
            .onOffline(efs?[.onOffline])
            .onOnline(efs?[.onOnline])
            .onPageHide(efs?[.onPageHide])
            .onPageShow(efs?[.onPageShow])
            .onPopState(efs?[.onPopState])
            .onResize(efs?[.onResize])
            .onStorage(efs?[.onStorage])
            .onUnload(efs?[.onUnload])
    }
    
    public convenience init(scripts: [Script] = [],
                            @TagBuilder _ builder: () -> Tag) {
        self.init(scripts: scripts, [builder()])
    }
}

extension Body {
    
    public enum BodyEvent: String {
        case onAfterPrint   // run after the document is printed
        case onBeforePrint  // run before the document is printed
        case onBeforeUnload // run when the document is about to be unloaded
        case onError        // run when an error occurs
        case onHashChange   // run when there has been changes to the anchor part of the a URL
        case onLoad         // fires after the page is finished loading
        case onMessage      // run when the message is triggered
        case onOffline      // run when the browser starts to work offline
        case onOnline       // run when the browser starts to work online
        case onPageHide     // run when a user navigates away from a page
        case onPageShow     // run when a user navigates to a page
        case onPopState     // run when the window's history changes
        case onResize       // fires when the browser window is resized
        case onStorage      // run when a Web Storage area is updated
        case onUnload       // fires once a page has unloaded (or the browser window has been closed)
    }
    
    public typealias JsFunction = String
}

extension Dictionary where Key == Body.BodyEvent, Value == [Body.JsFunction] {
    
    subscript(key: Key) -> String? {
        self[key]?.joined(separator: ";\r")
    }
}
