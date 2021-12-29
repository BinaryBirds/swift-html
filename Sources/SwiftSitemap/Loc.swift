//
//  Loc.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Loc: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "loc", contents: contents))
    }
}
