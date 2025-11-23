import DOM

public struct AttributeStore: Sendable {

    private var storage: [String: [String?]]

    public init() {
        self.storage = [:]
    }

    public init(
        _ attirbutes: [Attribute]
    ) {
        self.storage = [:]
        self.set(attributes: attirbutes)
    }

    // MARK: - set

    public mutating func set<T: Attribute>(
        attribute: T
    ) {
        storage[T.name] = [attribute.value]
    }

    public mutating func set(
        attributes: [Attribute]
    ) {
        for attribute in attributes {
            set(attribute: attribute)
        }
    }

    public mutating func setValueBy(
        name: String,
        value: String?
    ) {
        storage[name] = [value]
    }

    // MARK: - add

    public mutating func add<T: Attribute>(
        attribute: T
    ) {
        if storage[T.name] == nil {
            storage[T.name] = []
        }
        guard !storage[T.name]!.contains(attribute.value) else {
            return
        }
        storage[T.name]?.append(attribute.value)
    }

    // MARK: - remove

    public mutating func removeAttributeBy(
        name: String
    ) {
        storage[name] = nil
    }

    public mutating func removeAttributeBy<T: Attribute>(
        attribute: T
    ) {
        storage[T.name] = nil
    }

    public mutating func removeValueBy<T: Attribute>(
        attribute: T,
        keepEmptyAttribute: Bool = false
    ) {
        guard storage[T.name] != nil else {
            return
        }
        storage[T.name] = storage[T.name]!
            .filter { $0 != attribute.value }

        if !keepEmptyAttribute {
            if storage[T.name]!.isEmpty {
                storage[T.name] = nil
            }
        }
    }

    // MARK: - DOM

    public var properties: [Property] {
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
