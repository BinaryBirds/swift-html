import SGML

/// Path tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path
public struct Path: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ d: String,
        pathLength: Double? = nil
    ) {
        self.attributes = .init()
        self.children = []
        self =
            self
            .setAttribute(name: "d", value: d)

        if let pathLength {
            self = self.setAttribute(
                name: "pathLength",
                value: pathLength.preciseString
            )
        }
    }
}
