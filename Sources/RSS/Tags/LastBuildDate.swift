import SGML

public struct LastBuildDate: StandardTag, ChannelContent {

    public static let name = "lastBuildDate"

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]
    }
}
