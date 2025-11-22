import DOM

public protocol Attribute: Sendable {
    var name: String { get }
    var value: String? { get }
}

public struct RawAttribute: Attribute {
    public var name: String
    public var value: String?

    public init(
        name: String,
        value: String? = nil
    ) {
        self.name = name
        self.value = value
    }
}

public struct Attributes: Sendable {

    var storage: [String: [String?]]

    public init(
        _ values: [Attribute] = []
    ) {
        self.storage = [:]

        for value in values {
            add(attribute: value)
        }
    }

    public mutating func add(
        attribute: Attribute
    ) {
        if storage[attribute.name] == nil {
            storage[attribute.name] = []
        }
        guard !storage[attribute.name]!.contains(attribute.value) else {
            return
        }
        storage[attribute.name]?.append(attribute.value)
    }

    public mutating func set(
        attribute: Attribute
    ) {
        storage[attribute.name] = [attribute.value]
    }

    public mutating func remove(
        attribute: Attribute
    ) {
        storage[attribute.name] = nil
    }

    public mutating func removeValue(
        attribute: Attribute
    ) {
        guard storage[attribute.name] != nil else {
            return
        }
        storage[attribute.name] = storage[attribute.name]!
            .filter { $0 != attribute.value }

        //        if storage[attribute.name]!.isEmpty {
        //            storage[attribute.name] = nil
        //        }
    }

    public var domAttributes: [DOM.Attribute] {
        storage.map { name, value in
            let values = value.compactMap { $0 }.sorted()
            return .init(
                name: name,
                value: values.isEmpty ? nil : values.joined(separator: " ")
            )
        }
        .sorted { lhs, rhs in
            let lhsNil = (lhs.value == nil)
            let rhsNil = (rhs.value == nil)

            // valued first, nil-valued at end
            if lhsNil != rhsNil {
                return !lhsNil && rhsNil
            }
            return lhs.name < rhs.name
        }
    }
}
