//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol Mutable: Sendable {
    func mutate(_ modify: (inout Self) -> Void) -> Self
}

extension Mutable {

    public func mutate(_ modify: (inout Self) -> Void) -> Self {
        var mutableSelf = self
        modify(&mutableSelf)
        return mutableSelf
    }
}
