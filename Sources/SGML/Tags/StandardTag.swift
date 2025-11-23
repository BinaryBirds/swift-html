import DOM

public protocol StandardTag: Tag, Container, Attributes {

}

extension StandardTag {

    public var node: Node {
        StandardNode(
            name: Self.name,
            properties: attributes.properties,
            children: children.map(\.node)
        )
    }
}
