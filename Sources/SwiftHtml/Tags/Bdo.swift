//
//  Bdo.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
open class Bdo: StandardTag {
    
    override open class var name: String { .init(Bdo.self) }
    
    public init(_ contents: String, dir: TextDirection = .ltr) {
        super.init()
        self.setContents(contents)
        self.setAttributes([
            .init(key: "dir", value: dir.rawValue)
        ])
    }
}
