import SGML

extension Attributes where Self: Mutable {

    func setAttribute(
        key: AttributeKeys,
        value: String? = nil
    ) -> Self {
        setAttribute(name: key.rawValue, value: value)
    }

    func addAttribute(
        key: AttributeKeys,
        value: String?
    ) -> Self {
        addAttribute(name: key.rawValue, value: value)
    }

    func removeAttribute(
        key: AttributeKeys
    ) -> Self {
        removeAttribute(name: key.rawValue)
    }

    func removeAttribute(
        key: AttributeKeys,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        removeAttribute(
            name: key.rawValue,
            value: value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
    }

    func getAttribute(
        key: AttributeKeys
    ) -> String? {
        getAttribute(name: key.rawValue)
    }

    func hasAttribute(
        key: AttributeKeys
    ) -> Bool {
        hasAttribute(name: key.rawValue)
    }

    func hasAttribute(
        key: AttributeKeys,
        value: String?
    ) -> Bool {
        hasAttribute(name: key.rawValue, value: value)
    }

    // MARK: -
    
    func setAttribute(
        key: AttributeKeys,
        value: Int?
    ) -> Self {
        setAttribute(name: key.rawValue, value: value.map(String.init))
    }

    func getAttribute(
        key: AttributeKeys
    ) -> Int? {
        getAttribute(name: key.rawValue).flatMap { Int($0) }
    }
}
