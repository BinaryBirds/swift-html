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
        self.set(attirbutes)
    }

    // MARK: - set

    public mutating func setValueBy(
        name: String,
        value: String?
    ) {
        storage[name] = [value]
    }

    public mutating func set<T: Attribute>(
        _ attribute: T
    ) {
        setValueBy(
            name: T.name,
            value: attribute.value
        )
    }

    public mutating func set(
        _ attributes: [Attribute]
    ) {
        for attribute in attributes {
            set(attribute)
        }
    }

    // MARK: - add

    public mutating func addValueBy(
        name: String,
        value: String?
    ) {
        if storage[name] == nil {
            storage[name] = []
        }
        guard !storage[name]!.contains(value) else {
            return
        }
        storage[name]?.append(value)
    }

    public mutating func addValue<T: Attribute>(
        _ attribute: T
    ) {
        addValueBy(name: T.name, value: attribute.value)
    }

    public mutating func addValues<T: Attribute>(
        _ attributes: [T]
    ) {
        for attribute in attributes {
            addValueBy(name: T.name, value: attribute.value)
        }
    }

    // MARK: - remove

    public mutating func removeBy(
        name: String
    ) {
        storage[name] = nil
    }

    public mutating func removeBy<T: Attribute>(
        _: T.Type
    ) {
        removeBy(name: T.name)
    }

    public mutating func removeValueBy(
        name: String,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) {
        guard storage[name] != nil else {
            return
        }
        storage[name] = storage[name]!.filter { $0 != value }

        if !preservingEmptyAttribute {
            if storage[name]!.isEmpty {
                storage[name] = nil
            }
        }
    }

    public mutating func removeValue<T: Attribute>(
        _ attribute: T,
        preservingEmptyAttribute: Bool = false
    ) {
        removeValueBy(
            name: T.name,
            value: attribute.value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
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
