import SGML

public struct LastMod: StandardTag, UrlContent {

    public let children: [Element]

    public init(
        _ value: String
    ) {
        self.children = [
            Text(value)
        ]
    }
}
