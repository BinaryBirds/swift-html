import SGML

public struct ContentModel: Sendable, OptionSet {

    public let rawValue: UInt32

    public init(
        rawValue: UInt32
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
    // base 1x, title 1x, link meta noscript script style template
    public static let metadata: Self = .init(rawValue: 1 << 4)
    /// [Specification](https://html.spec.whatwg.org/#palpable-content).
    public static let palpable: Self = .init(rawValue: 1 << 5)
    /// [Specification](https://html.spec.whatwg.org/#phrasing-content).
    public static let phrasing: Self = .init(rawValue: 1 << 6)
    /// [Specification](https://html.spec.whatwg.org/#sectioning-content).
    public static let sectioning: Self = .init(rawValue: 1 << 7)
    /// [Specification](https://html.spec.whatwg.org/#form-associated-element).
    public static let formAssociated: Self = .init(rawValue: 1 << 8)
    /// [Specification](https://html.spec.whatwg.org/#listed-element).
    public static let listed: Self = .init(rawValue: 1 << 9)
    /// [Specification](https://html.spec.whatwg.org/#labelable-element).
    public static let labelable: Self = .init(rawValue: 1 << 10)
    /// [Specification](https://html.spec.whatwg.org/#submittable-element).
    public static let submittable: Self = .init(rawValue: 1 << 11)
    /// [Specification](https://html.spec.whatwg.org/#resettable-element).
    public static let resettable: Self = .init(rawValue: 1 << 12)
    /// [Specification](https://html.spec.whatwg.org/#autocapitalize-and-autocorrect-inheriting-form-associated-element).
    public static let autocapitalizeAndAutocorrectInheriting: Self = .init(
        rawValue: 1 << 13
    )
    /// [Specification](https://html.spec.whatwg.org/#script-supporting-element).
    public static let scriptSupporting: Self = .init(rawValue: 1 << 14)
    /// [Specification](https://html.spec.whatwg.org/#option-element-inner-content-elements).
    public static let optionInnerContent: Self = .init(rawValue: 1 << 15)
    /// [Specification](https://html.spec.whatwg.org/#optgroup-element-inner-content-elements).
    public static let optgroupInnerContent: Self = .init(rawValue: 1 << 16)
    /// [Specification](https://html.spec.whatwg.org/#select-element-inner-content-elements).
    public static let selectInnerContent: Self = .init(rawValue: 1 << 17)
}
