public struct StandardNode: Node {

    public var name: String
    public var attributes: [Attribute]
    public var children: [Node] { list.items }

    private var list: ListNode

    public init(
        name: String,
        attributes: [Attribute] = [],
        children: [Node] = []
    ) {
        self.name = name
        self.attributes = attributes
        self.list = .init(items: children)
    }
}
