//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol SimpleElement: Element {
    var value: String { get set }
}

extension SimpleElement {
    
    public var node: Node {
        .standard(.init(name: name), [.text(.init(value: value))])
    }
}

extension SimpleElement where Self: Attributes {

    public var node: Node {
        .standard(.init(name: name, attributes: attributes), [.text(.init(value: value))])
    }
}

public protocol MutableSimpleElement: SimpleElement, Mutable {

    func set(value: String) -> Self
}

extension MutableSimpleElement {

    public mutating func set(value: String) {
        self.value = value
    }

    public func set(value: String) -> Self {
        mutate { $0.set(value: value) }
    }
}
