import SGML

// https://validator.w3.org/feed/docs/rss2.html#ltttlgtSubelementOfLtchannelgt
// NOTE: xmlns:atom="http://www.w3.org/2005/Atom" support?
public struct Rss: StandardTag {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ channels: Channel...
        ) -> [Channel] {
            channels
        }
    }

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        version: String? = nil,
        channels: [Channel]
    ) {
        let attributes: [Attribute] =
            if let version {
                [
                    Version(value: version)
                ]
            }
            else {
                [
                    Version()
                ]
            }
        self.attributeStore = .init(attributes)
        self.children = channels
    }

    public init(
        version: String? = nil,
        @Builder _ block: () -> [Channel]
    ) {
        self.init(
            version: version,
            channels: block()
        )
    }
}
