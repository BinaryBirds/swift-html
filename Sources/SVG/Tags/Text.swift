import SGML

/// Text tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/Text
public struct Text: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            SGML.Text(value)
        ]
    }

    /// The x coordinate of the starting point of the text baseline.
    public func x(
        _ value: Double
    ) -> Self {
        setAttribute(
            name: "x",
            value: value.preciseString
        )
    }

    /// The y coordinate of the starting point of the text baseline.
    public func y(
        _ value: Double
    ) -> Self {
        setAttribute(
            name: "y",
            value: value.preciseString
        )
    }

}
