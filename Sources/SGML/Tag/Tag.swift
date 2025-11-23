import DOM

public protocol Tag: Element, Mutable {
    static var name: String { get }
}

extension Tag {

    public static var name: String {
        .init(describing: self).lowercased()
    }
}
