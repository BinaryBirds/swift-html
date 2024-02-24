//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol CustomAttributes {
    associatedtype A: Attribute
    
    var attributes: A { get set }
}

public protocol Attributes {

    var attributes: [any Attribute] { get set }
}

public protocol MutableAttributes: Attributes, Mutable {

    func index(of attribute: any Attribute) -> [any Attribute].Index?
    func add(attribute: any Attribute) -> Self
    func remove(attributeByKey key: String) -> Self
}

public extension MutableAttributes {
    
    func index(of attribute: any Attribute) -> [any Attribute].Index? {
        attributes.firstIndex(where: { $0.key == attribute.key })
    }

    mutating func add(attribute: any Attribute) {
        if let index = index(of: attribute) {
            attributes[index].value = attribute.value
        }
        else {
            attributes.append(attribute)
        }
    }

    mutating func remove(attributeByKey key: String) {
        attributes = attributes.filter { $0.key != key}
    }

    // MARK: -
    
    func add(attribute: any Attribute) -> Self {
        mutate { $0.add(attribute: attribute) }
    }
    
    func remove(attributeByKey key: String) -> Self {
        mutate { $0.remove(attributeByKey: key) }
    }
}


