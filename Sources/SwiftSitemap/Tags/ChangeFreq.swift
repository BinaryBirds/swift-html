import SGML

public struct ChangeFreq: StandardTag, UrlContent {

    public enum Frequency: String {
        case always
        case hourly
        case daily
        case weekly
        case monthly
        case yearly
        case never
    }

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ value: Frequency
    ) {
        self.attributes = .init()
        self.children = [
            Text(value.rawValue)
        ]
    }
}
