public protocol AttributeStorable {
    var attributeStore: AttributeStore { get }
}

extension AttributeStorable {
    public var store: AttributeStore { .init() }
}
