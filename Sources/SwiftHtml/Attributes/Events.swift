//
//  Events.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Attribute {
        
    enum Event: String {
        // Windows
        case afterPrint       // Script to be run after the document is printed
        case beforePrint      // Script to be run before the document is printed
        case beforeUnload     // Script to be run when the document is about to be unloaded
        case error            // Script to be run when an error occurs
        case hashChange       // Script to be run when there has been changes to the anchor part of the a URL
        case load             // Fires after the page is finished loading
        case message          // Script to be run when the message is triggered
        case offline          // Script to be run when the browser starts to work offline
        case online           // Script to be run when the browser starts to work online
        case pageHide         // Script to be run when a user navigates away from a page
        case pageShow         // Script to be run when a user navigates to a page
        case popState         // Script to be run when the window's history changes
        case resize           // Fires when the browser window is resized
        case storage          // Script to be run when a Web Storage area is updated
        case unload           // Fires once a page has unloaded (or the browser window has been closed)
        // Forms
        case blur             // Fires the moment that the element loses focus
        case change           // Fires the moment when the value of the element is changed
        case contextMenu      // Script to be run when a context menu is triggered
        case focus            // Fires the moment when the element gets focus
        case input            // Script to be run when an element gets user input
        case invalid          // Script to be run when an element is invalid
        case reset            // Fires when the Reset button in a form is clicked
        case search           // Fires when the user writes something in a search field (for <input="search">)
        case select           // Fires after some text has been selected in an element
        case submit           // Fires when a form is submitted
        // Keyboard
        case keyDown          // Fires when a user is pressing a key
        case keyPress         // Fires when a user presses a key
        case keyUp            // Fires when a user releases a key
        // Mouse
        case click            // Fires on a mouse click on the element
        case doubleClick      // Fires on a mouse double-click on the element
        case mouseDown        // Fires when a mouse button is pressed down on an element
        case mouseMove        // Fires when the mouse pointer is moving while it is over an element
        case mouseOut         // Fires when the mouse pointer moves out of an element
        case mouseOver        // Fires when the mouse pointer moves over an element
        case mouseUp          // Fires when a mouse button is released over an element
        case wheel            // Fires when the mouse wheel rolls up or down over an element
        // Drag and Drop
        case drag             // Script to be run when an element is dragged
        case dragEnd          // Script to be run at the end of a drag operation
        case dragEnter        // Script to be run when an element has been dragged to a valid drop target
        case dragLeave        // Script to be run when an element leaves a valid drop target
        case dragOver         // Script to be run when an element is being dragged over a valid drop target
        case dragStart        // Script to be run at the start of a drag operation
        case drop             // Script to be run when dragged element is being dropped
        case scroll           // Script to be run when an element's scrollbar is being scrolled
        // Clipboard
        case copy             // Fires when the user copies the content of an element
        case cut              // Fires when the user cuts the content of an element
        case paste            // Fires when the user pastes some content in an element
        // Media
        case abort            // Script to be run on abort
        case canPlay          // Script to be run when a file is ready to start playing (when it has buffered enough to begin)
        case canPlaythrough   // Script to be run when a file can be played all the way to the end without pausing for buffering
        case cueChange        // Script to be run when the cue changes in a <track> element
        case durationChange   // Script to be run when the length of the media changes
        case emptied          // Script to be run when something bad happens and the file is suddenly unavailable (like unexpectedly disconnects)
        case ended            // Script to be run when the media has reach the end (a useful event for messages like "thanks for listening")
        case loadedData       // Script to be run when media data is loaded
        case loadedMetadata   // Script to be run when meta data (like dimensions and duration) are loaded
        case loadStart        // Script to be run just as the file begins to load before anything is actually loaded
        case pause            // Script to be run when the media is paused either by the user or programmatically
        case play             // Script to be run when the media is ready to start playing
        case playing          // Script to be run when the media actually has started playing
        case progress         // Script to be run when the browser is in the process of getting the media data
        case rateChange       // Script to be run each time the playback rate changes (like when a user switches to a slow motion or fast forward mode)
        case seeked           // Script to be run when the seeking attribute is set to false indicating that seeking has ended
        case seeking          // Script to be run when the seeking attribute is set to true indicating that seeking is active
        case stalled          // Script to be run when the browser is unable to fetch the media data for whatever reason
        case suspend          // Script to be run when fetching the media data is stopped before it is completely loaded for whatever reason
        case timeUpdate       // Script to be run when the playing position has changed (like when the user fast forwards to a different point in the media)
        case volumeChange     // Script to be run each time the volume is changed which (includes setting the volume to "mute")
        case waiting          // Script to be run when the media has paused but is expected to resume (like when the media pauses to buffer more data)
        // Misc
        case toggle           // Fires when the user opens or closes the <details> element
    }
    
    typealias JSFunction = String
    
    struct EventFunction {
        let event: Event
        let function: JSFunction
        
        public init(_ event: Event, _ function: JSFunction) {
            self.event = event
            self.function = function
        }
    }
}

public extension Tag {
    
    @discardableResult
    func onEvent(_ e: Attribute.Event, _ function: Attribute.JSFunction?, _ condition: Bool = true) -> Self {
        attribute("on" + e.rawValue.lowercased(), function, condition)
    }

    /// add multiple events and functions to a Tag
    @discardableResult
    func onEvents(_ efs: [Attribute.EventFunction]?, condition: Bool = true) -> Self {
        guard let efs = efs, condition else { return self }
        _ = efs.map { attribute(addTo: "on" + $0.event.rawValue.lowercased(), $0.function, separator: ";\r") }
        return self
    }
}
