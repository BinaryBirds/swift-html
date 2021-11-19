//
//  Bdo.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
public final class Bdo: Tag {

    public init(_ contents: String, dir: TextDirection = .ltr) {
        let node = Node(type: .standard, name: "bdo", contents: contents, attributes: [.init(key: "dir", value: dir.rawValue)])
        super.init(node)
    }
}
