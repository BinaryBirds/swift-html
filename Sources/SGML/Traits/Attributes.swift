public protocol Attributes {
    var attributes: AttributeStore { get set }
}

extension Attributes where Self: Mutable {

    public func setAttribute(
        name: String,
        value: String?
    ) -> Self {
        modify {
            $0.attributes.set(name: name, value: value)
        }
    }

    public func setAttribute<T: Attribute>(
        _ attribute: T
    ) -> Self {
        setAttribute(name: T.name, value: attribute.value)
    }

    public func setAttributes<T: Attribute>(
        _ attributes: [T]
    ) -> Self {
        modify {
            for attribute in attributes {
                $0.attributes.set(name: T.name, value: attribute.value)
            }
        }
    }

    // MARK: - add

    public func addAttribute(
        name: String,
        value: String?
    ) -> Self {
        modify {
            $0.attributes.add(name: name, value: value)
        }
    }

    public func addAttribute<T: Attribute>(
        _ attribute: T
    ) -> Self {
        addAttribute(name: T.name, value: attribute.value)
    }

    public func addAttributes<T: Attribute>(
        _ attributes: [T]
    ) -> Self {
        modify {
            for attribute in attributes {
                $0.attributes.add(name: T.name, value: attribute.value)
            }
        }
    }

    // MARK: - remove

    public func removeAttribute(
        name: String
    ) -> Self {
        modify {
            $0.attributes.remove(name: name)
        }
    }

    public func removeAttribute<T: Attribute>(
        _: T.Type
    ) -> Self {
        removeAttribute(name: T.name)
    }

    public func removeAttribute(
        name: String,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        modify {
            $0.attributes.remove(
                name: name,
                value: value,
                preservingEmptyAttribute: preservingEmptyAttribute
            )
        }
    }

    public func removeAttribute<T: Attribute>(
        _ attribute: T,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        removeAttribute(
            name: T.name,
            value: attribute.value,
            preservingEmptyAttribute: preservingEmptyAttribute
        )
    }

    // MARK: - has

    public func hasAttribute(
        name: String
    ) -> Bool {
        attributes.has(name: name)

    }

    public func hasAttribute<T: Attribute>(
        _: T.Type
    ) -> Bool {
        hasAttribute(name: T.name)
    }

    public func hasAttribute(
        name: String,
        value: String?
    ) -> Bool {
        attributes.has(name: name, value: value)

    }

    public func hasAttribute<T: Attribute>(
        _ attribute: T
    ) -> Bool {
        hasAttribute(name: T.name, value: attribute.value)
    }

    // MARK: - get

    public func getAttribute(
        name: String
    ) -> String? {
        attributes.get(name: name)
    }

    public func getAttribute<T: Attribute>(
        _: T.Type
    ) -> String? {
        getAttribute(name: T.name)
    }
}
