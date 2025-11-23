import SGML

public struct Hgroup: StandardTag {  //, HeadingContent */ {

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
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents)
            ]
        )
    }

    public init(
        @ElementBuilder _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
