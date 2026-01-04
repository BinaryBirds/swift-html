public struct Stylesheet: Sendable {

    public var rules: [Rule]

    public init(
        _ rules: [Rule]
    ) {
        self.rules = rules
    }

    public init(
        @Builder<Rule> _ builder: () -> [Rule]
    ) {
        self.rules = builder()
    }
}
