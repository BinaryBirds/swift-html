import DOM

public protocol Tag: Element {
    var name: String { get }
    var attributes: Attributes { get }
}

extension Tag {

    public var name: String {
        String(
            describing: type(
                of: self
            )
        )
        .lowercased()
    }

    public var attributes: Attributes { .init() }
}

public protocol StandardTag: Tag {
    var children: [Element] { get }
}

extension StandardTag {

    public var children: [Element] { [] }

    public var node: Node {
        StandardNode(
            name: name,
            attributes: attributes.domAttributes,
            children: children.map(\.node)
        )
    }
}

public protocol ShortTag: Tag {

}

extension ShortTag {
    public var node: Node {
        ShortNode(
            name: name,
            attributes: attributes.domAttributes
        )
    }
}
