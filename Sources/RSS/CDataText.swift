import DOM
import SGML

public struct CDataText: Element {

    public var text: String

    public init(_ text: String) {
        self.text = text
    }

    public var node: Node {
        TextNode(
            value: "<![CDATA[" + text + "]]>"
        )
    }
}
