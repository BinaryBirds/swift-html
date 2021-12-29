//
//  Description.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Description: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "description", contents: "<![CDATA[" + contents + "]]>"))
    }
}
