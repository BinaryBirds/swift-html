//
//  Cursor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum CursorValue: String {
    /// The cursor indicates an alias of something is to be created
    case alias
    /// The cursor indicates that something can be scrolled in any direction
    case allScroll
    /// Default. The browser sets a cursor
    case auto
    /// The cursor indicates that a cell (or set of cells) may be selected
    case cell
    /// The cursor indicates that a context-menu is available
    case contextMenu
    /// The cursor indicates that the column can be resized horizontally
    case colResize
    /// The cursor indicates something is to be copied
    case copy
    /// The cursor render as a crosshair
    case crosshair
    /// The default cursor
    case `default`
    /// The cursor indicates that an edge of a box is to be moved right (east)
    case eResize
    /// Indicates a bidirectional resize cursor
    case ewResize
    /// The cursor indicates that something can be grabbed
    case grab
    /// The cursor indicates that something can be grabbed
    case grabbing
    /// The cursor indicates that help is available
    case help
    /// The cursor indicates something is to be moved
    case move
    /// The cursor indicates that an edge of a box is to be moved up (north)
    case nResize
    /// The cursor indicates that an edge of a box is to be moved up and right (north/east)
    case neResize
    /// Indicates a bidirectional resize cursor
    case neswResize
    /// Indicates a bidirectional resize cursor
    case nsResize
    /// The cursor indicates that an edge of a box is to be moved up and left (north/west)
    case nwResize
    /// Indicates a bidirectional resize cursor
    case nwseResize
    /// The cursor indicates that the dragged item cannot be dropped here
    case noDrop
    /// No cursor is rendered for the element
    case none
    /// The cursor indicates that the requested action will not be executed
    case notAllowed
    /// The cursor is a pointer and indicates a link
    case pointer
    /// The cursor indicates that the program is busy (in progress)
    case progress
    /// The cursor indicates that the row can be resized vertically
    case rowResize
    /// The cursor indicates that an edge of a box is to be moved down (south)
    case sResize
    /// The cursor indicates that an edge of a box is to be moved down and right (south/east)
    case seResize
    /// The cursor indicates that an edge of a box is to be moved down and left (south/west)
    case swResize
    /// The cursor indicates text that may be selected
    case text
    /// A comma separated list of URLs to custom cursors. Note: Always specify a generic cursor at the end of the list, in case none of the URL-defined cursors can be used
    // @TODO: add cursor url support
    //case URL(String)
    /// The cursor indicates vertical-text that may be selected
    case verticalText
    /// The cursor indicates that an edge of a box is to be moved left (west)
    case wResize
    /// The cursor indicates that the program is busy
    case wait
    /// The cursor indicates that something can be zoomed in
    case zoomIn
    /// The cursor indicates that something can be zoomed out
    case zoomOut
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Cursor(_ value: String) -> Property {
    Property(name: "cursor", value: value)
}

/// Specifies the mouse cursor to be displayed when pointing over an element
public func Cursor(_ value: CursorValue = .auto) -> Property {
    Cursor(value.rawValue)
}
