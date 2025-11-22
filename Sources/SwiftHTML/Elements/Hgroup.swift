import SGML

public struct Hgroup: StandardTag /*, HeadingContent */ {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> Hgroup {
            .init(children: elements)
        }
    }

    // MARK: -

    public let children: [Element]

    public init(
        @Builder _ block: () -> Self  //,
            //        @AttributeBuilder attributes: () -> [A] = { [] }
    ) {
        self = block()
        //        print(attributes())
    }

    //    public init(_ contents: String) {
    //        self.children = [
    //            Text(contents)
    //        ]
    //    }

    public init(children: [Element]) {
        self.children = children
    }
}
