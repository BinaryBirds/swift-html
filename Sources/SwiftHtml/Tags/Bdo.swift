//
//  Bdo.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
open class Bdo: Tag {
    
    public init(_ contents: String, dir: TextDirection = .ltr) {
        let node = Node(name: Self.name)
        super.init(node: node)
        self.setAttributes([
            .init(key: "dir", value: dir.rawValue)
        ])
    }
}
