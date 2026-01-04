/// https://www.w3schools.com/cssref/
public protocol Property: Sendable {

    var name: String { get }
    var value: String { get }
    var isImportant: Bool { get set }
}

extension Property {

    public mutating func important() {
        self.isImportant = true
    }
}
