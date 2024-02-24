//
//  Param.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<param>` tag is used to define parameters for an `<object>` element.
open class Param: EmptyTag {

}

extension Param {

    /// Specifies the name of a parameter
    public func name(_ value: String) -> Self {
        attribute("name", value)
    }

    /// Specifies the value of the parameter
    public func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
