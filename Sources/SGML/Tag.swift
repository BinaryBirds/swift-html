import DOM

public protocol Tag: Element {
    var name: String { get }
    var attributes: Attributes { get }
}

public extension Tag {
    
    var name: String {
        String(
            describing: type(
                of: self
            )
        )
        .lowercased()
    }

    var attributes: Attributes { .init() }
}

public protocol StandardTag: Tag {
    var children: [Element] { get }
}

public extension StandardTag {
    
    var children: [Element] { [] }
    
    var node: Node {
        StandardNode(
            name: name,
            attributes: attributes.domAttributes,
            children: children.map(\.node)
        )
    }
}

public protocol ShortTag: Tag {
    
}

public extension ShortTag {
    var node: Node {
        ShortNode(
            name: name,
            attributes: attributes.domAttributes
        )
    }
}
