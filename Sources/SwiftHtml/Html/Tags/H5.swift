//
//  H5.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func h5(_ contents: String) -> Node {
        Node(type: .standard, name: "h5", contents: contents)
    }
}

/// The `<h1>` to `<h6>` tags are used to define HTML headings.
///
/// `<h1>` defines the most important heading. `<h6>` defines the least important heading.
///
/// **Note:** Only use one `<h1>` per page - this should represent the main heading/subject for the whole page.
/// Also, do not skip heading levels - start with `<h1>`, then use `<h2>`, and so on.
public struct H5: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .h5(contents)
    }
}
