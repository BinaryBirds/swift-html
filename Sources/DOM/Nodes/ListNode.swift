public struct ListNode: Node {

    public var items: [Node]

    public init(
        items: [Node]
    ) {
        self.items = items
    }
}
