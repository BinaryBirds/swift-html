import SGML

public struct Hgroup: StandardTag {  //, HeadingContent */ {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> Hgroup {
            .init(children: elements)
        }
    }

    // MARK: -

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        @Builder _ block: () -> Self
    ) {
        self = block()
    }

    public init(
        children: [Element]
    ) {
        self.attributes = .init()
        self.children = children
    }
}
