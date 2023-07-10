//
//  Ttl.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Ttl: StandardTag {
    
    override open class var name: String { .init(Ttl.self) }

    public init(_ value: Int) {
        super.init()
        setContents(String(value))
    }
}
