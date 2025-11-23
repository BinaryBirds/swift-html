import SGML

public struct LastBuildDate: StandardTag, ChannelContent {

    public let name: String = "lastBuildDate"

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributeStore = .init()
        self.children = [
            Text(value)
        ]
    }
}
