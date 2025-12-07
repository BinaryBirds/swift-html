public struct FontFace: Rule {

    var properties: [Property]

    public init(@Builder<Property> _ builder: () -> [Property]) {
        self.properties = builder()
    }

}
