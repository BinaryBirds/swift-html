public protocol Attributes {
    var attributes: AttributeStore { get set }
}

extension Attributes where Self: Mutable {

    func add(attributes: [Attribute]) -> Self {
        modify {
            $0.attributes.set(attributes: attributes)
        }
    }

    func add(attribute: Attribute) -> Self {
        modify {
            $0.attributes.add(attribute: attribute)
        }
    }
}
