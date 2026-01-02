import SGML

public struct ContentModel: Sendable, OptionSet {

    public let rawValue: UInt8

    public init(
        rawValue: UInt8
    ) {
        self.rawValue = rawValue
    }

    /// [Specification](https://html.spec.whatwg.org/#embedded-content).
    public static let embedded: Self = .init(rawValue: 1 << 0)
    /// [Specification](https://html.spec.whatwg.org/#flow-content).
    public static let flow: Self = .init(rawValue: 1 << 1)
    /// [Specification](https://html.spec.whatwg.org/#heading-content).
    public static let heading: Self = .init(rawValue: 1 << 2)
    /// [Specification](https://html.spec.whatwg.org/#interactive-content).
    public static let interactive: Self = .init(rawValue: 1 << 3)
    /// [Specification](https://html.spec.whatwg.org/#metadata-content).
    // base 1x
    // title 1x
    // link meta noscript script style template
    public static let metadata: Self = .init(rawValue: 1 << 4)
    /// [Specification](https://html.spec.whatwg.org/#palpable-content).
    public static let palpable: Self = .init(rawValue: 1 << 5)
    /// [Specification](https://html.spec.whatwg.org/#phrasing-content).
    public static let phrasing: Self = .init(rawValue: 1 << 6)
    /// [Specification](https://html.spec.whatwg.org/#sectioning-content).
    public static let sectioning: Self = .init(rawValue: 1 << 7)
}

public protocol ContentModelRepresentable {
    var categories: ContentModel { get }
}

protocol HTMLTag: Tag, ContentModelRepresentable {}
protocol HTMLShortTag: ShortTag, ContentModelRepresentable {}
protocol HTMLStandardTag: StandardTag, ContentModelRepresentable {}
