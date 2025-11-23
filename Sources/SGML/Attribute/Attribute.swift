public protocol Attribute: Sendable {
    static var name: String { get }
    var value: String? { get }
}

extension Attribute {

    public static var name: String {
        .init(describing: self).lowercased()
    }
}
