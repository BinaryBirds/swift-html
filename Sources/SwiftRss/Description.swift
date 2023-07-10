//
//  Description.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Description: StandardTag {
    
    override open class var name: String { .init(Description.self) }
    
    public init(_ contents: String) {
        super.init()
        setContents("<![CDATA[" + contents + "]]>")
    }
}
