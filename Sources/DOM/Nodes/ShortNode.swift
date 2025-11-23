public struct ShortNode: Node {

    public var name: String
    public var properties: [Property]

    public init(
        name: String,
        properties: [Property] = []
    ) {
        self.name = name
        self.properties = properties
    }
}
