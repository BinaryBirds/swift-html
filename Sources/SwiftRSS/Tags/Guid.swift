import SGML

public struct Guid: StandardTag, ItemContent {

    public var attributes: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String,
        isPermalink: Bool? = nil
    ) {
        let attributes: [Attribute] =
            if let isPermalink {
                [IsPermalink(value: isPermalink)]
            }
            else { [] }

        self.attributes = .init(attributes)
        self.children = [
            Text(value)
        ]
    }
}
