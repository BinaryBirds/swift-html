//
//  Output.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<output>` tag is used to represent the result of a calculation (like one performed by a script).
open class Output: Tag {

}

extension Output {

    /// Specifies the relationship between the result of the calculation, and the elements used in the calculation
    public func `for`(_ value: String) -> Self {
        attribute("for", value)
    }

    /// Specifies which form the output element belongs to
    public func form(_ value: String) -> Self {
        attribute("form", value)
    }

    /// Specifies a name for the output element
    public func name(_ value: String) -> Self {
        attribute("name", value)
    }
}
