//
//  Noscript.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func noscript(_ contents: String) -> Node {
        Node(type: .standard, name: "noscript", contents: contents)
    }
}

/// The `<noscript>` tag defines an alternate content to be displayed to users that have disabled scripts in their browser or have a browser that doesn't support script.
/// 
/// The `<noscript>` element can be used in both `<head>` and `<body>`. When used inside `<head>`, the `<noscript>` element could only contain `<link>`, `<style>`, and `<meta>` elements.
public struct Noscript: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .noscript(contents)
    }
}
