//
//  Title.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Title: StandardTag {
    
    override open class var name: String { .init(Title.self) }

    public init(_ contents: String) {
        super.init()
        setContents("<![CDATA[" + contents + "]]>")
    }
}
