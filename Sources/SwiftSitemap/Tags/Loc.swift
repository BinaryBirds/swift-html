import SGML

public struct Loc: StandardTag, UrlContent {

    public let children: [Element]

    public init(
        _ value: String
    ) {
        self.children = [
            Text(value)
        ]
    }
}
