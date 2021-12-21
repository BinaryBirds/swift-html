//
//  Title.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class Title: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "title", contents: "<![CDATA[" + contents + "]]>"))
    }
}
