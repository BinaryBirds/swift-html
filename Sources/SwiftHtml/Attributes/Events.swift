//
//  Events.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Tag {
    
    // MARK: - Window Event Attributes
    
    /// Script to be run after the document is printed
    func onAfterPrint(_ value: String?) -> Self {
        attribute("onafterprint", value)
    }
    
    /// Script to be run before the document is printed
    func onBeforePrint(_ value: String?) -> Self {
        attribute("onbeforeprint", value)
    }
    
    /// Script to be run when the document is about to be unloaded
    func onBeforeUnload(_ value: String?) -> Self {
        attribute("onbeforeunload", value)
    }
    
    /// Script to be run when an error occurs
    func onError(_ value: String?) -> Self {
        attribute("onerror", value)
    }
    
    /// Script to be run when there has been changes to the anchor part of the a URL
    func onHashChange(_ value: String?) -> Self {
        attribute("onhashchange", value)
    }
    
    /// Fires after the page is finished loading
    func onLoad(_ value: String?) -> Self {
        attribute("onload", value)
    }
    
    /// Script to be run when the message is triggered
    func onMessage(_ value: String?) -> Self {
        attribute("onmessage", value)
    }
    
    /// Script to be run when the browser starts to work offline
    func onOffline(_ value: String?) -> Self {
        attribute("onoffline", value)
    }
    
    /// Script to be run when the browser starts to work online
    func onOnline(_ value: String?) -> Self {
        attribute("ononline", value)
    }
    
    /// Script to be run when a user navigates away from a page
    func onPageHide(_ value: String?) -> Self {
        attribute("onpagehide", value)
    }
    
    /// Script to be run when a user navigates to a page
    func onPageShow(_ value: String?) -> Self {
        attribute("onpageshow", value)
    }
    
    /// Script to be run when the window's history changes
    func onPopState(_ value: String?) -> Self {
        attribute("onpopstate", value)
    }
    
    /// Fires when the browser window is resized
    func onResize(_ value: String?) -> Self {
        attribute("onresize", value)
    }
    
    /// Script to be run when a Web Storage area is updated
    func onStorage(_ value: String?) -> Self {
        attribute("onstorage", value)
    }
    
    /// Fires once a page has unloaded (or the browser window has been closed)
    func onUnload(_ value: String?) -> Self {
        attribute("onunload", value)
    }
    
    // MARK: - Form Events
    
    /// Fires the moment that the element loses focus
    func onBlur(_ value: String?) -> Self {
        attribute("onblur", value)
    }

    /// Fires the moment when the value of the element is changed
    func onChange(_ value: String?) -> Self {
        attribute("onchange", value)
    }

    /// Script to be run when a context menu is triggered
    func onContextMenu(_ value: String?) -> Self {
        attribute("oncontextmenu", value)
    }

    /// Fires the moment when the element gets focus
    func onFocus(_ value: String?) -> Self {
        attribute("onfocus", value)
    }

    /// Script to be run when an element gets user input
    func onInput(_ value: String?) -> Self {
        attribute("oninput", value)
    }

    /// Script to be run when an element is invalid
    func onInvalid(_ value: String?) -> Self {
        attribute("oninvalid", value)
    }

    /// Fires when the Reset button in a form is clicked
    func onReset(_ value: String?) -> Self {
        attribute("onreset", value)
    }

    /// Fires when the user writes something in a search field (for <input="search">)
    func onSearch(_ value: String?) -> Self {
        attribute("onsearch", value)
    }

    /// Fires after some text has been selected in an element
    func onSelect(_ value: String?) -> Self {
        attribute("onselect", value)
    }

    /// Fires when a form is submitted
    func onSubmit(_ value: String?) -> Self {
        attribute("onsubmit", value)
    }
    
    // MARK: - Keyboard Events
    

    /// Fires when a user is pressing a key
    func onKeyDown(_ value: String?) -> Self {
        attribute("onkeydown", value)
    }

    /// Fires when a user presses a key
    func onKeyPress(_ value: String?) -> Self {
        attribute("onkeypress", value)
    }

    /// Fires when a user releases a key
    func onKeyUp(_ value: String?) -> Self {
        attribute("onkeyup", value)
    }
    
    // MARK: - Mouse Events
    

    /// Fires on a mouse click on the element
    func onClick(_ value: String?) -> Self {
        attribute("onclick", value)
    }

    /// Fires on a mouse double-click on the element
    func onDoubleClick(_ value: String?) -> Self {
        attribute("ondblclick", value)
    }

    /// Fires when a mouse button is pressed down on an element
    func onMouseDown(_ value: String?) -> Self {
        attribute("onmousedown", value)
    }

    /// Fires when the mouse pointer is moving while it is over an element
    func onMouseMove(_ value: String?) -> Self {
        attribute("onmousemove", value)
    }

    /// Fires when the mouse pointer moves out of an element
    func onMouseOut(_ value: String?) -> Self {
        attribute("onmouseout", value)
    }

    /// Fires when the mouse pointer moves over an element
    func onMouseOver(_ value: String?) -> Self {
        attribute("onmouseover", value)
    }

    /// Fires when a mouse button is released over an element
    func onMouseUp(_ value: String?) -> Self {
        attribute("onmouseup", value)
    }

    /// Fires when the mouse wheel rolls up or down over an element
    func onWheel(_ value: String?) -> Self {
        attribute("onwheel", value)
    }
    
    // MARK: - Drag Events

    /// Script to be run when an element is dragged
    func onDrag(_ value: String?) -> Self {
        attribute("ondrag", value)
    }

    /// Script to be run at the end of a drag operation
    func onDragEnd(_ value: String?) -> Self {
        attribute("ondragend", value)
    }

    /// Script to be run when an element has been dragged to a valid drop target
    func onDragEnter(_ value: String?) -> Self {
        attribute("ondragenter", value)
    }

    /// Script to be run when an element leaves a valid drop target
    func onDragLeave(_ value: String?) -> Self {
        attribute("ondragleave", value)
    }

    /// Script to be run when an element is being dragged over a valid drop target
    func onDragOver(_ value: String?) -> Self {
        attribute("ondragover", value)
    }

    /// Script to be run at the start of a drag operation
    func onDragStart(_ value: String?) -> Self {
        attribute("ondragstart", value)
    }

    /// Script to be run when dragged element is being dropped
    func onDrop(_ value: String?) -> Self {
        attribute("ondrop", value)
    }

    /// Script to be run when an element's scrollbar is being scrolled
    func onScroll(_ value: String?) -> Self {
        attribute("onscroll", value)
    }
    
    // MARK: - Clipboard Events

    /// Fires when the user copies the content of an element
    func onCopy(_ value: String?) -> Self {
        attribute("oncopy", value)
    }

    /// Fires when the user cuts the content of an element
    func onCut(_ value: String?) -> Self {
        attribute("oncut", value)
    }

    /// Fires when the user pastes some content in an element
    func onPaste(_ value: String?) -> Self {
        attribute("onpaste", value)
    }
    
    // MARK: - Media Events
    
    /// Script to be run on abort
    func onAbort(_ value: String?) -> Self {
        attribute("onabort", value)
    }

    /// Script to be run when a file is ready to start playing (when it has buffered enough to begin)
    func onCanPlay(_ value: String?) -> Self {
        attribute("oncanplay", value)
    }

    /// Script to be run when a file can be played all the way to the end without pausing for buffering
    func onCanPlaythrough(_ value: String?) -> Self {
        attribute("oncanplaythrough", value)
    }

    /// Script to be run when the cue changes in a <track> element
    func onCueChange(_ value: String?) -> Self {
        attribute("oncuechange", value)
    }

    /// Script to be run when the length of the media changes
    func onDurationChange(_ value: String?) -> Self {
        attribute("ondurationchange", value)
    }

    /// Script to be run when something bad happens and the file is suddenly unavailable (like unexpectedly disconnects)
    func onEmptied(_ value: String?) -> Self {
        attribute("onemptied", value)
    }

    /// Script to be run when the media has reach the end (a useful event for messages like "thanks for listening")
    func onEnded(_ value: String?) -> Self {
        attribute("onended", value)
    }

    /// Script to be run when an error occurs when the file is being loaded
//    func onError(_ value: String?) -> Self {
//        attribute("onerror", value)
//    }

    /// Script to be run when media data is loaded
    func onLoadedData(_ value: String?) -> Self {
        attribute("onloadeddata", value)
    }

    /// Script to be run when meta data (like dimensions and duration) are loaded
    func onLoadedMetadata(_ value: String?) -> Self {
        attribute("onloadedmetadata", value)
    }

    /// Script to be run just as the file begins to load before anything is actually loaded
    func onLoadStart(_ value: String?) -> Self {
        attribute("onloadstart", value)
    }

    /// Script to be run when the media is paused either by the user or programmatically
    func onPause(_ value: String?) -> Self {
        attribute("onpause", value)
    }

    /// Script to be run when the media is ready to start playing
    func onPlay(_ value: String?) -> Self {
        attribute("onplay", value)
    }

    /// Script to be run when the media actually has started playing
    func onPlaying(_ value: String?) -> Self {
        attribute("onplaying", value)
    }

    /// Script to be run when the browser is in the process of getting the media data
    func onProgress(_ value: String?) -> Self {
        attribute("onprogress", value)
    }

    /// Script to be run each time the playback rate changes (like when a user switches to a slow motion or fast forward mode)
    func onRateChange(_ value: String?) -> Self {
        attribute("onratechange", value)
    }

    /// Script to be run when the seeking attribute is set to false indicating that seeking has ended
    func onSeeked(_ value: String?) -> Self {
        attribute("onseeked", value)
    }

    /// Script to be run when the seeking attribute is set to true indicating that seeking is active
    func onSeeking(_ value: String?) -> Self {
        attribute("onseeking", value)
    }

    /// Script to be run when the browser is unable to fetch the media data for whatever reason
    func onStalled(_ value: String?) -> Self {
        attribute("onstalled", value)
    }

    /// Script to be run when fetching the media data is stopped before it is completely loaded for whatever reason
    func onSuspend(_ value: String?) -> Self {
        attribute("onsuspend", value)
    }

    /// Script to be run when the playing position has changed (like when the user fast forwards to a different point in the media)
    func onTimeUpdate(_ value: String?) -> Self {
        attribute("ontimeupdate", value)
    }

    /// Script to be run each time the volume is changed which (includes setting the volume to "mute")
    func onVolumeChange(_ value: String?) -> Self {
        attribute("onvolumechange", value)
    }

    /// Script to be run when the media has paused but is expected to resume (like when the media pauses to buffer more data)
    func onWaiting(_ value: String?) -> Self {
        attribute("onwaiting", value)
    }
    
    // MARK: - Misc Events
    
    /// Fires when the user opens or closes the <details> element
    func onToggle(_ value: String?) -> Self {
        attribute("ontoggle", value)
    }
}
