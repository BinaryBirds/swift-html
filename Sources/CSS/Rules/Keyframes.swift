public struct Keyframes: Rule {

    var name: String
    var selectors: [Selector]

    public init(
        _ name: String,
        @Builder<Selector> _ builder: () -> [Selector]
    ) {
        self.name = name
        self.selectors = builder()
    }
}
