//
//  Param.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<param>` tag is used to define parameters for an `<object>` element.
open class Param: EmptyTag {
    
    public init() {
        super.init(node: EmptyTag.defaultNode(name: Self.name))
    }
}

public extension Param {
    
    /// Specifies the name of a parameter
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
    
    /// Specifies the value of the parameter
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
