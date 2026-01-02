import SGML

/// Ellipse tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse
public struct Ellipse: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        cx: Double,
        cy: Double,
        rx: Double,
        ry: Double,
        pathLength: Double? = nil
    ) {
        self.attributes = .init()
        self.children = []
        self =
            self
            .setAttribute(name: "cx", value: cx.preciseString)
            .setAttribute(name: "cy", value: cy.preciseString)
            .setAttribute(name: "rx", value: rx.preciseString)
            .setAttribute(name: "ry", value: ry.preciseString)

        if let pathLength {
            self = self.setAttribute(
                name: "pathLength",
                value: pathLength.preciseString
            )
        }
    }
}
