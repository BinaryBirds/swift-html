import SGML

/// Line tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line
public struct Line: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        x1: Double,
        y1: Double,
        x2: Double,
        y2: Double,
        pathLength: Double? = nil
    ) {
        self.attributes = .init()
        self.children = []
        self =
            self
            .setAttribute(name: "x1", value: x1.preciseString)
            .setAttribute(name: "y1", value: y1.preciseString)
            .setAttribute(name: "x2", value: x2.preciseString)
            .setAttribute(name: "y2", value: y2.preciseString)

        if let pathLength {
            self = self.setAttribute(
                name: "pathLength",
                value: pathLength.preciseString
            )
        }
    }
}
