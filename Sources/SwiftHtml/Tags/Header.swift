//
//  Header.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The` <header>` element represents a container for introductory content or a set of navigational links.
///
/// A` <header>` element typically contains:
///
/// - one or more heading elements (`<h1>` - `<h6>`)
/// - logo or icon
/// - authorship information
/// **Note:** You can have several` <header>` elements in one HTML document. However,` <header>` cannot be placed within a` <footer>`,` <address>` or another` <header>` element.
open class Header: StandardTag {
    
    override open class var name: String { .init(Header.self) }
}

