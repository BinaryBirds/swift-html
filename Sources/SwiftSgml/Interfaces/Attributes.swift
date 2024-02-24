//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol Attributes: Sendable {

    var attributes: [Attribute] { get set }
}

public protocol MutableAttributes: Attributes, Mutable {

    func index(of attribute: Attribute) -> [Attribute].Index?
    func add(attribute: Attribute) -> Self
    func remove(attributeByKey key: String) -> Self
    func set(attributes newValue: [Attribute]) -> Self
}

public extension MutableAttributes {
    
    func index(of attribute: Attribute) -> [Attribute].Index? {
        attributes.firstIndex(where: { $0.key == attribute.key })
    }

    mutating func add(attribute: Attribute) {
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
    
    mutating func set(attributes newValue: [Attribute]) {
        attributes = newValue
    }

    // MARK: -
    
    func add(attribute: any Attribute) -> Self {
        mutate { $0.add(attribute: attribute) }
    }
    
    func set(attributes newValue: [Attribute]) -> Self {
        mutate { $0.set(attributes: newValue) }
    }
    
    func remove(attributeByKey key: String) -> Self {
        mutate { $0.remove(attributeByKey: key) }
    }
    
    
}


