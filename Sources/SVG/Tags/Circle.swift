import SGML

/// Circle tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle
public struct Circle: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        cx: Double,
        cy: Double,
        r: Double,
        pathLength: Double? = nil
    ) {
        self.attributes = .init()
        self.children = []
        self =
            self
            .setAttribute(name: "cx", value: cx.preciseString)
            .setAttribute(name: "cy", value: cy.preciseString)
            .setAttribute(name: "r", value: r.preciseString)

        if let pathLength {
            self = self.setAttribute(
                name: "pathLength",
                value: pathLength.preciseString
            )
        }
    }
}
