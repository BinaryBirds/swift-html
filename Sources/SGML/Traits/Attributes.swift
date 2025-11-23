public protocol Attributes {
    var attributes: AttributeStore { get set }
}

extension Attributes where Self: Mutable {

    public func setAttributeValueBy(
        name: String,
        value: String?
    ) -> Self {
        modify {
            $0.attributes.setValueBy(name: name, value: value)
        }
    }

    public func setAttribute(
        _ attribute: Attribute
    ) -> Self {
        modify {
            $0.attributes.set(attribute)
        }
    }

    public func setAttributes(
        _ attributes: [Attribute]
    ) -> Self {
        modify {
            $0.attributes.set(attributes)
        }
    }

    // MARK: - add

    public func addAttributeValueBy(
        name: String,
        value: String?
    ) -> Self {
        modify {
            $0.attributes.addValueBy(name: name, value: value)
        }
    }

    public func addAttributeValue(
        _ attribute: Attribute
    ) -> Self {
        modify {
            $0.attributes.addValue(attribute)
        }
    }

    public func addAttributeValues<T: Attribute>(
        _ attributes: [T]
    ) -> Self {
        modify {
            $0.attributes.addValues(attributes)
        }
    }

    // MARK: - remove

    public func removeAttributeBy(
        name: String
    ) -> Self {
        modify {
            $0.attributes.removeBy(name: name)
        }
    }

    public func removeAttributeBy<T: Attribute>(
        _ attribute: T.Type
    ) -> Self {
        modify {
            $0.attributes.removeBy(attribute)
        }
    }

    public func removeAttributeValueBy(
        name: String,
        value: String?,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        modify {
            $0.attributes.removeValueBy(
                name: name,
                value: value,
                preservingEmptyAttribute: preservingEmptyAttribute
            )
        }
    }

    public func removeAttributeValueBy<T: Attribute>(
        _ attribute: T,
        preservingEmptyAttribute: Bool = false
    ) -> Self {
        modify {
            $0.attributes.removeValue(
                attribute,
                preservingEmptyAttribute: preservingEmptyAttribute
            )
        }
    }
}
