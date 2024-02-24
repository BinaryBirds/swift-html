//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol Attributed: Mutable {

    var attributes: [any Attribute] { get set }

//    mutating func addAttribute(_ attribute: Attribute)

    func add(attribute: any Attribute) -> Self
    func remove(attributeByKey: String) -> Self
}

extension Attributed {
    
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
    
    public func add(attribute: any Attribute) -> Self {
        mutate { $0.add(attribute: attribute) }
    }
    
    public func remove(attributeByKey key: String) -> Self {
        mutate { $0.remove(attributeByKey: key) }
    }
}


