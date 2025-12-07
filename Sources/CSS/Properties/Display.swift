//
//  Display.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum DisplayValue: String {
    /// Displays an element as an inline element (like <span>). Any height and width properties will have no effect
    case inline
    /// Displays an element as a block element (like <p>). It starts on a new line, and takes up the whole width
    case block
    /// Makes the container disappear, making the child elements children of the element the next level up in the DOM
    case contents
    /// Displays an element as a block-level flex container
    case flex
    ///  Displays an element as a block-level grid container
    case grid
    /// Displays an element as an inline-level block container. The element itself is formatted as an inline element, but you can apply height and width values
    case inlineBlock = "inline-block"
    /// Displays an element as an inline-level flex container
    case inlineFlex = "inline-flex"
    /// Displays an element as an inline-level grid container
    case inlineGrid = "inline-grid"
    /// The element is displayed as an inline-level table
    case inlineTable = "inline-table"
    /// Let the element behave like a <li> element
    case listItem = "list-item"
    /// Displays an element as either block or inline, depending on context
    case runIn = "run-in"
    /// Let the element behave like a <table> element
    case table
    /// Let the element behave like a <caption> element
    case tableCaption = "table-caption"
    /// Let the element behave like a <colgroup> element
    case tableColumnGroup = "table-column-group"
    /// Let the element behave like a <thead> element
    case tableHeaderGroup = "table-header-group"
    /// Let the element behave like a <tfoot> element
    case tableFooterGroup = "table-footer-group"
    /// Let the element behave like a <tbody> element
    case tableRowGroup = "table-row-group"
    /// Let the element behave like a <td> element
    case tableCell = "table-cell"
    /// Let the element behave like a <col> element
    case tableColumn = "table-column"
    /// Let the element behave like a <tr> element
    case tableRow = "table-row"
    /// The element is completely removed
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Display(_ value: String) -> Property {
    Property(name: "display", value: value)
}

/// Specifies how a certain HTML element should be displayed
public func Display(_ value: DisplayValue = .initial) -> Property {
    Display(value.rawValue)
}
