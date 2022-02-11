//
//  Ttl.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Ttl: Tag {

    public init(_ value: Int) {
        super.init()
        setContents(String(value))
    }
}
