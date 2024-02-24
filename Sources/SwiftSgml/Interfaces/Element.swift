//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol Element {
    var name: String { get }
    var node: Node { get }
    
//    func modify(_ modify: (inout Self) -> Void) -> Self
}

extension Element {

    public var name: String {
        .init(describing: type(of: self)).lowercased()
    }
}





