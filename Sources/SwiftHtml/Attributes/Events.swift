//
//  Events.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Attribute {
    
    typealias JSFunction = String
    
    enum Event: String {
        // Windows
        case onAfterPrint       // Script to be run after the document is printed
        case onBeforePrint      // Script to be run before the document is printed
        case onBeforeUnload     // Script to be run when the document is about to be unloaded
        case onError            // Script to be run when an error occurs
        case onHashChange       // Script to be run when there has been changes to the anchor part of the a URL
        case onLoad             // Fires after the page is finished loading
        case onMessage          // Script to be run when the message is triggered
        case onOffline          // Script to be run when the browser starts to work offline
        case onOnline           // Script to be run when the browser starts to work online
        case onPageHide         // Script to be run when a user navigates away from a page
        case onPageShow         // Script to be run when a user navigates to a page
        case onPopState         // Script to be run when the window's history changes
        case onResize           // Fires when the browser window is resized
        case onStorage          // Script to be run when a Web Storage area is updated
        case onUnload           // Fires once a page has unloaded (or the browser window has been closed)
        // Forms
        case onBlur             // Fires the moment that the element loses focus
        case onChange           // Fires the moment when the value of the element is changed
        case onContextMenu      // Script to be run when a context menu is triggered
        case onFocus            // Fires the moment when the element gets focus
        case onInput            // Script to be run when an element gets user input
        case onInvalid          // Script to be run when an element is invalid
        case onReset            // Fires when the Reset button in a form is clicked
        case onSearch           // Fires when the user writes something in a search field (for <input="search">)
        case onSelect           // Fires after some text has been selected in an element
        case onSubmit           // Fires when a form is submitted
        // Keyboard
        case onKeyDown          // Fires when a user is pressing a key
        case onKeyPress         // Fires when a user presses a key
        case onKeyUp            // Fires when a user releases a key
        // Mouse
        case onClick            // Fires on a mouse click on the element
        case onDoubleClick      // Fires on a mouse double-click on the element
        case onMouseDown        // Fires when a mouse button is pressed down on an element
        case onMouseMove        // Fires when the mouse pointer is moving while it is over an element
        case onMouseOut         // Fires when the mouse pointer moves out of an element
        case onMouseOver        // Fires when the mouse pointer moves over an element
        case onMouseUp          // Fires when a mouse button is released over an element
        case onWheel            // Fires when the mouse wheel rolls up or down over an element
        // Drag and Drop
        case onDrag             // Script to be run when an element is dragged
        case onDragEnd          // Script to be run at the end of a drag operation
        case onDragEnter        // Script to be run when an element has been dragged to a valid drop target
        case onDragLeave        // Script to be run when an element leaves a valid drop target
        case onDragOver         // Script to be run when an element is being dragged over a valid drop target
        case onDragStart        // Script to be run at the start of a drag operation
        case onDrop             // Script to be run when dragged element is being dropped
        case onScroll           // Script to be run when an element's scrollbar is being scrolled
        // Clipboard
        case onCopy             // Fires when the user copies the content of an element
        case onCut              // Fires when the user cuts the content of an element
        case onPaste            // Fires when the user pastes some content in an element
        // Media
        case onAbort            // Script to be run on abort
        case onCanPlay          // Script to be run when a file is ready to start playing (when it has buffered enough to begin)
        case onCanPlaythrough   // Script to be run when a file can be played all the way to the end without pausing for buffering
        case onCueChange        // Script to be run when the cue changes in a <track> element
        case onDurationChange   // Script to be run when the length of the media changes
        case onEmptied          // Script to be run when something bad happens and the file is suddenly unavailable (like unexpectedly disconnects)
        case onEnded            // Script to be run when the media has reach the end (a useful event for messages like "thanks for listening")
        case onLoadedData       // Script to be run when media data is loaded
        case onLoadedMetadata   // Script to be run when meta data (like dimensions and duration) are loaded
        case onLoadStart        // Script to be run just as the file begins to load before anything is actually loaded
        case onPause            // Script to be run when the media is paused either by the user or programmatically
        case onPlay             // Script to be run when the media is ready to start playing
        case onPlaying          // Script to be run when the media actually has started playing
        case onProgress         // Script to be run when the browser is in the process of getting the media data
        case onRateChange       // Script to be run each time the playback rate changes (like when a user switches to a slow motion or fast forward mode)
        case onSeeked           // Script to be run when the seeking attribute is set to false indicating that seeking has ended
        case onSeeking          // Script to be run when the seeking attribute is set to true indicating that seeking is active
        case onStalled          // Script to be run when the browser is unable to fetch the media data for whatever reason
        case onSuspend          // Script to be run when fetching the media data is stopped before it is completely loaded for whatever reason
        case onTimeUpdate       // Script to be run when the playing position has changed (like when the user fast forwards to a different point in the media)
        case onVolumeChange     // Script to be run each time the volume is changed which (includes setting the volume to "mute")
        case onWaiting          // Script to be run when the media has paused but is expected to resume (like when the media pauses to buffer more data)
        // Misc
        case onToggle           // Fires when the user opens or closes the <details> element
    }
    
    struct EventFunction {
        let event: Event
        let function: JSFunction
    }
}

public extension Tag {
    
    @discardableResult
    func onEvent(_ e: Attribute.Event, _ function: Attribute.JSFunction?, _ condition: Bool = true) -> Self {
        attribute(e.rawValue.lowercased(), function, condition)
    }
    
    @discardableResult
    func onEvents(_ efs: [Attribute.EventFunction]?, condition: Bool = true) -> Self {
        guard let efs = efs, condition else { return self }
        _ = efs.map { appendToAttribute($0.event.rawValue, $0.function, separator: ";\r") }
        return self
    }
}
