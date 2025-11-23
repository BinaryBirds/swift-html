public protocol Attributed {
    var attributeStore: AttributeStore { get }
}

extension Attributed {
    public var store: AttributeStore { .init() }
}
