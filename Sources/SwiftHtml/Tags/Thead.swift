//
//  Thead.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<thead>` tag is used to group header content in an HTML table.
///
/// The `<thead>` element is used in conjunction with the `<tbody>` and `<tfoot>` elements to specify each part of a table (header, body, footer).
///
/// Browsers can use these elements to enable scrolling of the table body independently of the header and footer.
/// Also, when printing a large table that spans multiple pages, these elements can enable the table header and footer to be printed at the top and bottom of each page.
///
/// **Note:** The `<thead>` element must have one or more `<tr>` tags inside.
///
/// The `<thead>` tag must be used in the following context: As a child of a `<table>` element, after any `<caption>` and `<colgroup>` elements, and before any `<tbody>`, `<tfoot>`, and `<tr>` elements.
///
/// **Tip:** The `<thead>`, `<tbody>`, and `<tfoot>` elements will not affect the layout of the table by default. However, you can use CSS to style these elements (see example below)!
open class Thead: Tag {

}
