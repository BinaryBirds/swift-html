//
//  Dl.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<dl>` tag defines a description list.
///
/// The `<dl>` tag is used in conjunction with `<dt>` (defines terms/names) and `<dd>` (describes each term/name).
public final class Dl: Tag {
    
    public convenience init() {
        self.init { }
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "dl"), tags: builder())
    }
}
