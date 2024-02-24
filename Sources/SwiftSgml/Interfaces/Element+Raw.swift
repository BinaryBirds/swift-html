//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol RawElement: Element {

    var value: String { get }
}

extension RawElement {

    public var node: Node {
        .text(.init(value: value))
    }
}
