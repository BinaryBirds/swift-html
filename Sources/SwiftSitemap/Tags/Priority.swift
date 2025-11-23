import SGML

public struct Priority: StandardTag, UrlContent {

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributeStore = .init()
        self.children = [
            Text(value)
        ]
    }

    public init(
        _ value: Float
    ) {
        self.init(String(value))
    }

    public init(
        _ value: Double
    ) {
        self.init(String(value))
    }

    public init(
        _ value: Int
    ) {
        self.init(String(value))
    }

}
