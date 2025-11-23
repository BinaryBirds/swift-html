public protocol Attribute: Sendable {
    static var name: String { get }
    var value: String? { get }
}
