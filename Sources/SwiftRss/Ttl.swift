//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class Ttl: Tag {

    public init(_ value: Int) {
        super.init(Node(type: .standard, name: "ttl", contents: String(value)))
    }
}
