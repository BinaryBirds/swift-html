import DOM

public protocol Tag: Element, Mutable {
    var name: String { get }
}

extension Tag {

    public var name: String {
        String(
            describing: type(
                of: self
            )
        )
        .lowercased()
    }
}
