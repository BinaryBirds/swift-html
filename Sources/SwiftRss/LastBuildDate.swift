//
//  LastBuildDate.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//


open class LastBuildDate: Tag {

    open override class func createNode() -> Node {
        Node(type: .standard, name: "lastBuildDate")
    }
}
