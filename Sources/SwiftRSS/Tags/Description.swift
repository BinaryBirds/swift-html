import SGML

public struct Description: StandardTag, ItemContent, ChannelContent {

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributeStore = .init()
        self.children = [
            CDataText(value)
        ]
    }
}
