//
//  Style.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//


/// The `<style>` tag is used to define style information (CSS) for a document.
///
/// Inside the `<style>` element you specify how HTML elements should render in a browser.
public final class Style: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "style", contents: contents))
    }
}

public extension Style {

    /// Specifies what media/device the media resource is optimized for
    func media(_ value: String) -> Self {
        node.upsert(Attribute(key: "media", value: value))
        return self
    }
    
    /// Specifies the media type of the `<style>` tag
    func type() -> Self {
        node.upsert(Attribute(key: "type", value: "text/css"))
        return self
    }
}
