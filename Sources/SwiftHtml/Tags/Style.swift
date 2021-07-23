//
//  Style.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func style(_ contents: String) -> Node {
        Node(type: .standard, name: "style", contents: contents)
    }
}

/// The `<style>` tag is used to define style information (CSS) for a document.
///
/// Inside the `<style>` element you specify how HTML elements should render in a browser.
public struct Style: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .style(contents)
    }
}

public extension Style {

    /// Specifies what media/device the media resource is optimized for
    func media(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "media", value: value)))
    }
    
    /// Specifies the media type of the `<style>` tag
    func type() -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: "text/css")))
    }
}
