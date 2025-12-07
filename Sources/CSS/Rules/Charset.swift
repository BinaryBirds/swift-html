/// Specifies the character encoding to use
public struct Charset: Rule {
    var name: String

    public init(_ name: String) {
        self.name = name
    }
}
