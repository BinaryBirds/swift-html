public protocol Selector: Sendable {
    var name: String { get }
    var properties: [any Property] { get }
    var pseudo: String? { get set }
}

extension Selector {

    public mutating func pseudo(
        _ pseudo: Pseudo
    ) {
        self.pseudo = pseudo.value
    }
}
