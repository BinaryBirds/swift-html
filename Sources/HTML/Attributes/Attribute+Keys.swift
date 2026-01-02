import SGML

extension Attributes where Self: Mutable {

    func setAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String? = nil
    ) -> Self {
        setAttribute(name: key.attributeKey, value: value)
    }

    func addAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String?
    ) -> Self {
        addAttribute(name: key.attributeKey, value: value)
    }

    func removeAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> Self {
        removeAttribute(name: key.attributeKey)
    }

    func removeAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        removeAttribute(
            name: key.attributeKey,
            value: value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
    }

    func getAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> String? {
        getAttribute(name: key.attributeKey)
    }

    func hasAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> Bool {
        hasAttribute(name: key.attributeKey)
    }

    func hasAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: String?
    ) -> Bool {
        hasAttribute(name: key.attributeKey, value: value)
    }

    // MARK: -
    
    func setAttribute<Key: AttributeKeyRepresentable>(
        key: Key,
        value: Int?
    ) -> Self {
        setAttribute(name: key.attributeKey, value: value.map(String.init))
    }

    func getAttribute<Key: AttributeKeyRepresentable>(
        key: Key
    ) -> Int? {
        getAttribute(name: key.attributeKey).flatMap { Int($0) }
    }
}
