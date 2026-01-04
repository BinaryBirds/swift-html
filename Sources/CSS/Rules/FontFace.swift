public struct FontFace: Rule {

    var properties: [any Property]

    public init(
        @Builder<Property> _ builder: () -> [any Property]
    ) {
        self.properties = builder()
    }

}
