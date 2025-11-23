public protocol Container {
    var children: [Element] { get set }
}

extension Container where Self: Mutable {

    public func add(child: Element) -> Self {
        modify {
            $0.children.append(child)
        }
    }
}
