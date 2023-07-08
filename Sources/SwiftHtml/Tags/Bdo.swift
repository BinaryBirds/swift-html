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
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }

    public init(_ contents: String, dir: TextDirection = .ltr) {
        super.init()
        self.setAttributes([
            .init(key: "dir", value: dir.rawValue)
        ])
    }
}
