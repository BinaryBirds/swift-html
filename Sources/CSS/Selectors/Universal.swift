public struct Universal: Selector {

    public let name: String
    public var properties: [any Property]
    public var pseudo: String? = nil

    public init(
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = "*"
        self.properties = builder()
        self.pseudo = nil
    }
}

public typealias AllElements = Universal
