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

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        @Builder _ block: () -> Self
    ) {
        self = block()
    }

    public init(
        children: [Element]
    ) {
        self.attributeStore = .init()
        self.children = children
    }
}
