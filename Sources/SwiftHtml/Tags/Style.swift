//
//  Style.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//


/// The `<style>` tag is used to define style information (CSS) for a document.
///
/// Inside the `<style>` element you specify how HTML elements should render in a browser.
open class Style: StandardTag {
    
    override open class var name: String { .init(Style.self) }
}

public extension Style {

    /// Specifies what media/device the media resource is optimized for
    func media(_ value: String) -> Self {
        attribute("media", value)
    }

    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: MediaQuery...) -> Self {
        return media(queries)
    }
    
    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    func media(_ queries: [MediaQuery]) -> Self {
        return media(queries.map(\.value).joined(separator: " and "))
    }
    
    /// Specifies the media type (text/css) of the `<style>` tag
    func css() -> Self {
        attribute("type", "text/css")
    }
}
