public struct Element: Selector {

    public let name: String
    public var properties: [any Property]
    public var pseudo: String? = nil

    public init(
        _ name: String,
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.name = name
        self.properties = builder()
        self.pseudo = nil
    }
}
