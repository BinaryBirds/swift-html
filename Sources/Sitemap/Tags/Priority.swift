import SGML

public struct Priority: StandardTag, UrlContent {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: String
    ) {
        self.attributes = .init()
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
