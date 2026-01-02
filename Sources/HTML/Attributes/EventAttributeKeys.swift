import SGML

enum EventAttributeKey: String, AttributeKeyRepresentable {
    case abort
    case afterPrint = "afterprint"
    case beforeInput = "beforeinput"
    case beforePrint = "beforeprint"
    case beforeUnload = "beforeunload"
    case blur
    case canPlay = "canplay"
    case canPlayThrough = "canplaythrough"
    case change
    case click
    case contextMenu = "contextmenu"
    case copy
    case cueChange = "cuechange"
    case cut
    case dblClick = "dblclick"
    case drag
    case dragEnd = "dragend"
    case dragEnter = "dragenter"
    case dragLeave = "dragleave"
    case dragOver = "dragover"
    case dragStart = "dragstart"
    case drop
    case durationChange = "durationchange"
    case emptied
    case ended
    case error
    case focus
    case gotPointerCapture = "gotpointercapture"
    case hashChange = "hashchange"
    case input
    case invalid
    case keyDown = "keydown"
    case keyPress = "keypress"
    case keyUp = "keyup"
    case languageChange = "languagechange"
    case load
    case loadedData = "loadeddata"
    case loadedMetadata = "loadedmetadata"
    case loadStart = "loadstart"
    case lostPointerCapture = "lostpointercapture"
    case message
    case messageError = "messageerror"
    case mouseDown = "mousedown"
    case mouseEnter = "mouseenter"
    case mouseLeave = "mouseleave"
    case mouseMove = "mousemove"
    case mouseOut = "mouseout"
    case mouseOver = "mouseover"
    case mouseUp = "mouseup"
    case offline
    case online
    case pageHide = "pagehide"
    case pageReveal = "pagereveal"
    case pageShow = "pageshow"
    case pageSwap = "pageswap"
    case paste
    case pause
    case play
    case playing
    case pointerCancel = "pointercancel"
    case pointerDown = "pointerdown"
    case pointerEnter = "pointerenter"
    case pointerLeave = "pointerleave"
    case pointerMove = "pointermove"
    case pointerOut = "pointerout"
    case pointerOver = "pointerover"
    case pointerUp = "pointerup"
    case popState = "popstate"
    case progress
    case rateChange = "ratechange"
    case rejectionHandled = "rejectionhandled"
    case reset
    case resize
    case scroll
    case search
    case seeked
    case seeking
    case select
    case selectionChange = "selectionchange"
    case selectStart = "selectstart"
    case stalled
    case storage
    case submit
    case suspend
    case timeUpdate = "timeupdate"
    case toggle
    case unhandledRejection = "unhandledrejection"
    case unload
    case volumeChange = "volumechange"
    case waiting
    case wheel
}

extension EventAttributeKey {
    var attributeKey: String { "on" + rawValue }
}
