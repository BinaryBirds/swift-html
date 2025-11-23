import DOM

public protocol StandardTag: Tag, AttributeStorable {
    var children: [Element] { get }
}

extension StandardTag {

    public var children: [Element] { [] }

    public var node: Node {
        StandardNode(
            name: name,
            properties: attributeStore.properties,
            children: children.map(\.node)
        )
    }
}
