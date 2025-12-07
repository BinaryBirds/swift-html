//
//  HTMLElement.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

///
/// https://developer.mozilla.org/en-US/docs/Web/HTML/Element
/// https://www.w3schools.com/TAGS/default.ASP
///
public enum HTMLElement: String {
    /// main root, sectioning root
    case html, body
    /// content sectioning
    case address, article, aside, footer, header, h1, h2, h3, h4, h5, h6, main,
        nav, section
    /// text content
    case blockquote, dd, div, dl, dt, figcaption, figure, hr, li, ol, p, pre, ul
    /// inline text semantics
    case a, abbr, b, bdi, bdo, br, cite, code, data, dfn, em, i, kbd, mark, q,
        ruby, s, samp, small, span, strong, sub, sup, time, u, `var`, wbr
    /// image and multimedia
    case area, audio, img, map, track, video
    /// embedded content
    case embed, iframe, object, param, picture, portal, source
    /// svg and mathml
    case svg, math
    /// scripting
    case canvas, noscript, script
    /// demarcating edits
    case del, ins
    /// table content
    case caption, col, colgroup, table, tbody, td, tfoot, th, thead, tr
    /// forms
    case button, datalist, fieldset, form, input, label, legend, meter,
        optgroup, option, output, progress, select, textarea
    /// interactive elements
    case details, dialog, menu, summary
    /// web components
    case slot, template
}
