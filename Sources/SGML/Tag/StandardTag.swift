import DOM

public protocol StandardTag: Tag, Attributes {
    var children: [Element] { get }
}

extension StandardTag {

    public var children: [Element] { [] }

    public var node: Node {
        StandardNode(
            name: name,
            properties: attributes.properties,
            children: children.map(\.node)
        )
    }
}
