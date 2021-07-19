//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func input() -> Node {
        Node(type: .empty, name: "input")
    }
}

public struct Input: Tag {
    
    public enum InputType: String {
        case button
        case checkbox
        case color
        case date
        case datetimeLocal = "datetime-local"
        case email
        case file
        case hidden
        case image
        case month
        case number
        case password
        case radio
        case range
        case reset
        case search
        case submit
        case tel
        case text
        case time
        case url
        case week
    }

    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .input()
    }
    
    /// Specifies a short hint that describes the expected value of an <input> element
    public func placeholder(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "placeholder", value: value)))
    }
    
    /// Specifies the type <input> element to display
    public func type(_ value: InputType) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value.rawValue)))
    }
    
    /// Specifies the value of an <input> element
    public func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
