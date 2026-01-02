import SGML

// https://validator.w3.org/feed/docs/rss2.html#ltttlgtSubelementOfLtchannelgt
// NOTE: xmlns:atom="http://www.w3.org/2005/Atom" support?
public struct Rss: StandardTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        version: String? = nil,
        channels: [Channel]
    ) {
        self.attributes = .init()
        self.children = channels

        if let version {
            self = addAttribute(Version(version))
        }
        else {
            self = addAttribute(Version())
        }
    }

    public init(
        version: String? = nil,
        @Builder<Channel> _ block: () -> [Channel]
    ) {
        self.init(
            version: version,
            channels: block()
        )
    }

}
