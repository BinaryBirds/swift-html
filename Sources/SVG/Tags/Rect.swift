import SGML

/// Rect tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect
public struct Rect: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        x: Double,
        y: Double,
        width: Double,
        height: Double,
        rx: Double? = nil,
        ry: Double? = nil,
        pathLength: Double? = nil
    ) {
        self.attributes = .init()
        self.children = []
        self =
            self
            .setAttribute(name: "x", value: x.preciseString)
            .setAttribute(name: "y", value: y.preciseString)
            .setAttribute(name: "width", value: width.preciseString)
            .setAttribute(name: "height", value: height.preciseString)

        if let rx {
            self = self.setAttribute(
                name: "rx",
                value: rx.preciseString
            )
        }
        if let ry {
            self = self.setAttribute(
                name: "ry",
                value: ry.preciseString
            )
        }
        if let pathLength {
            self = self.setAttribute(
                name: "pathLength",
                value: pathLength.preciseString
            )
        }
    }
}
