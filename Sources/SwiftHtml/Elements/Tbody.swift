//
//  Tbody.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<tbody>` tag is used to group the body content in an HTML table.
///
/// The `<tbody>` element is used in conjunction with the `<thead>` and `<tfoot>` elements to specify each part of a table (body, header, footer).
///
/// Browsers can use these elements to enable scrolling of the table body independently of the header and footer.
/// Also, when printing a large table that spans multiple pages, these elements can enable the table header and footer to be printed at the top and bottom of each page.
///
/// **Note:** The `<tbody>` element must have one or more `<tr>` tags inside.
///
/// The `<tbody>` tag must be used in the following context: As a child of a `<table>` element, after any `<caption>`, `<colgroup>`, and `<thead>` elements.
///
/// **Tip:** The `<thead>`, `<tbody>`, and `<tfoot>` elements will not affect the layout of the table by default. However, you can use CSS to style these elements (see example below)!
open class Tbody: Tag {

}
