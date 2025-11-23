import DOM

public protocol ShortTag: Tag, Attributes {

}

extension ShortTag {

    public var node: Node {
        ShortNode(
            name: name,
            properties: attributes.properties
        )
    }
}
