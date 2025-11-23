import SGML

public struct LastBuildDate: StandardTag, ChannelContent {

    public let name: String = "lastBuildDate"

    public var attributes: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]
    }
}
