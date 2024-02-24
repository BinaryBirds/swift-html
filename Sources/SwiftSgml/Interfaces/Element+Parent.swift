//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol ParentElement: Element {
    
    var children: [any Element] { get set }
}

extension ParentElement {

    public var node: Node? {
        .standard(.init(name: name), children.compactMap { $0.node })
    }
}

extension ParentElement where Self: Attributes {
    
    public var node: Node? {
        .standard(.init(name: name, attributes: attributes), children.compactMap { $0.node })
    }
}

public protocol MutableParentElement: ParentElement, Mutable {
    func add<T: Element>(child: T) -> Self
    func removeChildren() -> Self
}

public extension MutableParentElement {
    
    mutating func removeChildren() {
        children.removeAll()
    }
    
    mutating func add<T: Element>(child: T) {
        children.append(child)
    }

    func add<T: Element>(child: T) -> Self {
        mutate { $0.add(child: child) }
    }

    func removeChildren() -> Self {
        mutate { $0.removeChildren() }
    }
}
