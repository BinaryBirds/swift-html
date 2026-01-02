import SGML

/// Polyline tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline
public struct Polyline: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ points: [Double],
        pathLength: Double? = nil
    ) {
        self.attributes = .init()
        self.children = []
        self =
            self
            .setAttribute(
                name: "points",
                value: points.map(\.preciseString).joined(separator: " ")
            )

        if let pathLength {
            self = self.setAttribute(
                name: "pathLength",
                value: pathLength.preciseString
            )
        }
    }
}
