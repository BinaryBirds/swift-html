import DOM

public struct Renderer: Sendable {

    public var indent: UInt8

    public init(
        indent: UInt8 = 0
    ) {
        self.indent = indent
    }

    public func render(
        document: Document
    ) -> String {
        let renderer = DOM.Renderer(
            indent: indent
        )
        let doctype = render(type: document.type)
        let doc = renderer.render(node: document.root.node)
        if indent > 0, !doctype.isEmpty {
            return doctype + "\n" + doc
        }
        return doctype + doc
    }

    // MARK: - private

    private func render(
        type: DocType
    ) -> String {
        switch type {
        case .unspecified:
            ""
        case .html:
            #"<!doctype html>"#
        case .xml:
            #"<?xml version="1.0" encoding="utf-8" ?>"#
        case .custom(let value):
            value
        }
    }
}
