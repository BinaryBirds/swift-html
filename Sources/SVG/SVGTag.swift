import SGML

public protocol SVGTag: StandardTag {

}

extension SVGTag {

    public func width(
        _ value: Int
    ) -> Self {
        setAttribute(name: "width", value: String(value))
    }

    public func height(
        _ value: Int
    ) -> Self {
        setAttribute(name: "height", value: String(value))
    }

    public func fill(
        _ value: String
    ) -> Self {
        setAttribute(name: "fill", value: value)
    }

    public func stroke(
        _ value: String
    ) -> Self {
        setAttribute(name: "stroke", value: value)
    }

    public func strokeWidth(
        _ value: Int
    ) -> Self {
        setAttribute(name: "stroke-width", value: String(value))
    }

    public func strokeLinecap(
        _ value: String
    ) -> Self {
        setAttribute(name: "stroke-linecap", value: value)
    }

    public func strokeLinejoin(
        _ value: String
    ) -> Self {
        setAttribute(name: "stroke-linejoin", value: value)
    }

    public func transform(
        _ value: String
    ) -> Self {
        setAttribute(name: "transform", value: value)
    }
}
