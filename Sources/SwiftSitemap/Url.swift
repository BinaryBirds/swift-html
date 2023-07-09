//
//  Url.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Url: Tag {

    convenience init() {
        self.init(node: .init(name: Self.name))
    }
}
