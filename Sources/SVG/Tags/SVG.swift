import SGML

/// SVG tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element
public struct SVG: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }

    public func viewBox(
        minX: Int,
        minY: Int,
        width: Int,
        height: Int
    ) -> Self {
        let value = [minX, minY, width, height]
            .map(String.init)
            .joined(separator: " ")

        return setAttribute(name: "viewBox", value: value)
    }

}
