import DOM

public protocol ShortTag: Tag, AttributeStorable {

}

extension ShortTag {

    public var node: Node {
        ShortNode(
            name: name,
            properties: attributeStore.properties
        )
    }
}
