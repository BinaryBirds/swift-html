public protocol Container {
    var children: [Element] { get set }
}

extension Container where Self: Mutable {

    public func addChild(
        _ element: Element
    ) -> Self {
        modify {
            $0.children.append(element)
        }
    }

    public func addChildren<T: Element>(
        _ elements: [T]
    ) -> Self {
        modify {
            $0.children.append(contentsOf: elements)
        }
    }
}
