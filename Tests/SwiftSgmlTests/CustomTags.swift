//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

final class Root: Tag {
    init(_ contents: String? = nil) {
        super.init(Node(type: .standard, name: "root", contents: contents))
    }
}

final class Leaf: Tag {
    init(_ contents: String? = nil) {
        super.init(Node(type: .standard, name: "leaf", contents: contents))
    }
}

final class Branch: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "branch"), children: builder())
    }
}
