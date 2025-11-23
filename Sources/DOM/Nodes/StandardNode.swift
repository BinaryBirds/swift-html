public struct StandardNode: Node {

    public var name: String
    public var properties: [Property]
    public var children: [Node] { list.items }

    private var list: ListNode

    public init(
        name: String,
        properties: [Property] = [],
        children: [Node] = []
    ) {
        self.name = name
        self.properties = properties
        self.list = .init(items: children)
    }
}
