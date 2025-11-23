public protocol Container {
    var children: [Element] { get }
}

extension Container {
    public var children: [Element] { [] }
}
