//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import Foundation

public final class Lastmod: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "lastmod", contents: contents))
    }
}
