/// https://www.w3schools.com/cssref/css_selectors.asp
public struct Selector: Sendable {
    var name: String
    var properties: [Property]
    var pseudo: String? = nil

    public init(
        name: String,
        properties: [Property],
        pseudo: String? = nil
    ) {
        self.name = name
        self.properties = properties
        self.pseudo = pseudo
    }

    public init(
        _ name: String,
        @Builder<Property> _ builder: () -> [Property]
    ) {
        self.name = name
        self.properties = builder()
    }
}
