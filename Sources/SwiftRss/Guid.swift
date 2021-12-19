//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class Guid: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "guid", contents: contents))
    }
}

public extension Guid {
    
    func isPermalink(_ value: Bool = true) -> Self {
        node.upsert(Attribute(key: "isPermalink", value: String(value)))
        return self
    }
}
