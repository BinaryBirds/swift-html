//
//  Priority.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Priority: StandardTag {
    
    override open class var name: String { .init(describing: Priority.self).lowercased() }

    public init(_ value: Double) {
        super.init()
        setContents(String(value))
    }
}
