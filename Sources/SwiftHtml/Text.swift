//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct Text: Element {

    let value: String

    public init(_ value: String) {
        self.value = value
    }

    public var node: Node { .text(.init(value: value)) }
}
