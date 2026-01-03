import Collections
import DOM

public struct AttributeStore: Sendable {

    private var storage: OrderedDictionary<String, [String?]>

    public init() {
        self.storage = [:]
    }

    // MARK: - api

    public mutating func set(
        name: String,
        value: String?
    ) {
        storage[name] = [value]
    }

    public mutating func add(
        name: String,
        value: String?
    ) {
        if storage[name] == nil {
            storage[name] = []
        }
        guard let value, !value.isEmpty else {
            return
        }
        guard !storage[name]!.contains(value) else {
            return
        }
        storage[name]?.append(value)
    }

    public mutating func remove(
        name: String
    ) {
        storage[name] = nil
    }

    public mutating func remove(
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

    public func has(
        name: String
    ) -> Bool {
        storage[name] != nil
    }

    public func has(
        name: String,
        value: String?
    ) -> Bool {
        if let values = storage[name] {
            return values.contains(value)
        }
        return false
    }

    public func get(
        name: String
    ) -> String? {
        storage[name]?.compactMap { $0 }.joined(separator: " ")
    }

    // MARK: - DOM

    public var properties: [Property] {
        storage.map { name, value in
            let values = value.compactMap { $0 }
            return .init(
                name: name,
                value: values.isEmpty ? nil : values.joined(separator: " ")
            )
        }
    }
}
