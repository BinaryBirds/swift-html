import SGML

public struct Guid: StandardTag, ItemContent {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: String,
        isPermalink: Bool? = nil
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]

        if let isPermalink {
            self = addAttribute(IsPermalink(isPermalink))
        }
    }
}
