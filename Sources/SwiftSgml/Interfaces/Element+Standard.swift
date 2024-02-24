//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol StandardElement: Element {
    
    var children: [any Element] { get set }
}

extension StandardElement {

    public var node: Node {
        .standard(.init(name: name), children.map { $0.node })
    }
}

public extension StandardElement where Self: Mutable {
    
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
