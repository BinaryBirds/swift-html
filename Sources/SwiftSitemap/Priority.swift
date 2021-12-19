//
//  Priority.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class Priority: Tag {

    public init(_ value: Double) {
        super.init(Node(type: .standard, name: "priority", contents: String(value)))
    }
}
