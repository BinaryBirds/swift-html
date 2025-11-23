import SGML

public struct Guid: StandardTag, ItemContent {

    public internal(set) var attributeStore: AttributeStore
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

        self.attributeStore = .init(attributes)
        self.children = [
            Text(value)
        ]
    }
}
