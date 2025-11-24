public struct Renderer {

    public var indent: UInt8

    public init(
        indent: UInt8 = 0
    ) {
        self.indent = indent
    }

    public func render(
        node: Node
    ) -> String {
        if indent == 0 {
            return renderInline(node)
        }
        return renderWithIndentation(node)
    }

    // MARK: - internal

    func indentation(
        for level: UInt8
    ) -> String {
        .init(repeating: " ", count: Int(indent) * Int(level))
    }

    func renderAttributeList(
        _ attributes: [Property]
    ) -> String {
        let attributesList =
            attributes
            .map { renderAttribute($0) }
            .joined(separator: " ")
        if !attributesList.isEmpty {
            return " " + attributesList
        }
        return attributesList
    }

    func renderAttribute(
        _ attribute: Property
    ) -> String {
        if let value = attribute.value {
            return #"\#(attribute.name)="\#(value)""#
        }
        return attribute.name
    }

    func renderStandardOpening(
        _ node: StandardNode
    ) -> String {
        let attributesList = renderAttributeList(node.properties)
        return "<\(node.name)\(attributesList)>"
    }

    func renderStandardClosing(
        _ node: StandardNode
    ) -> String {
        "</\(node.name)>"
    }

    func renderShort(
        _ node: ShortNode
    ) -> String {
        let attributesList = renderAttributeList(node.properties)
        return "<\(node.name)\(attributesList)>"
    }

    func renderComment(
        _ node: CommentNode
    ) -> String {
        "<!-- \(node.value) -->"
    }

    // MARK: - rendering

    func renderInline(
        _ node: Node
    ) -> String {
        switch node {
        case let node as ListNode:
            return node.items
                .map { renderInline($0) }
                .joined()
        case let node as StandardNode:
            let openingTag = renderStandardOpening(node)
            let closingTag = renderStandardClosing(node)
            let childrenInline = node.children
                .map { renderInline($0) }
                .joined()
            return openingTag + childrenInline + closingTag
        case let node as ShortNode:
            return renderShort(node)
        case let node as CommentNode:
            return renderComment(node)
        case let node as TextNode:
            return node.value
        default:
            fatalError("Unknown node type `\(String(describing: node))`.")
        }
    }

    func renderWithIndentation(
        _ node: Node,
        level: UInt8 = 0,
        isInsideList: Bool = false
    ) -> String {
        let (spaces, newline) =
            indent > 0 ? (indentation(for: level), "\n") : ("", "")
        var result: String = ""
        switch node {
        case let node as ListNode:
            for item in node.items {
                result += renderWithIndentation(
                    item,
                    level: level,
                    isInsideList: true
                )
            }
        case let node as StandardNode:
            let items = node.children
            let openingTag = renderStandardOpening(node)
            let closingTag = renderStandardClosing(node)

            // Special case: empty children
            if items.isEmpty {
                result += spaces
                result += openingTag
                result += closingTag
                if level > 0 {
                    result += newline
                }
            }
            // Special case: begins with a TextNode
            else if let firstText = items.first as? TextNode {
                // Ignore render identation is true for the text node
                if firstText.ignoreRenderIndentation {
                    result += spaces
                    result += openingTag
                    for child in items {
                        if let text = child as? TextNode,
                            text.ignoreRenderIndentation
                        {
                            result += text.value
                        }
                        else {
                            result += renderInline(child)
                        }
                    }
                    result += closingTag
                    if level > 0 {
                        result += newline
                    }
                }
                else {
                    result += spaces
                    result += renderInline(node)
                    if level > 0 {
                        result += newline
                    }
                }
            }
            // Block form: children on their own lines
            else {
                result += spaces
                result += openingTag
                result += newline
                for child in items {
                    result += renderWithIndentation(
                        child,
                        level: level + 1,
                        isInsideList: true
                    )
                }
                result += spaces
                result += closingTag
                if level > 0 {
                    result += newline
                }
            }
        case let node as ShortNode:
            let shortTag = renderShort(node)
            result += spaces
            result += shortTag
            result += isInsideList ? newline : ""
        case let node as CommentNode:
            let commentTag = renderComment(node)
            result += spaces
            result += commentTag
            result += isInsideList ? newline : ""
        case let node as TextNode:
            if node.ignoreRenderIndentation {
                result += node.value
            }
            else {
                result += spaces
                result += node.value
                if isInsideList {
                    result += newline
                }
            }
        default:
            fatalError("Unknown node type `\(String(describing: node))`.")
        }
        return result
    }
}
