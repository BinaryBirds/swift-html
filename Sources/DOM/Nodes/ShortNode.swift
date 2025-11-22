public struct ShortNode: Node {
    
    public var name: String
    public var attributes: [Attribute]
    
    public init(
        name: String,
        attributes: [Attribute] = []
    ) {
        self.name = name
        self.attributes = attributes
    }
}
