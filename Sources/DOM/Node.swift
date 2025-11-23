public protocol Node: Sendable {
    // You should never implement this protocol
}

extension Node {

    public func render(
        indent: UInt8 = 0
    ) -> String {
        let renderer = Renderer(indent: indent)
        return renderer.render(node: self)
    }
}
