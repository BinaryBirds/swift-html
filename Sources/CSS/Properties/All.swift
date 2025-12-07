//
//  All.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AllValue: String {
    /// Changes all the properties applied to the element or the element's parent to their initial value
    case initial
    /// Changes all the properties applied to the element or the element's parent to their parent value
    case inherit
    /// Changes all the properties applied to the element or the element's parent to their parent value if they are inheritable or to their initial value if not
    case unset
}

public func All(_ value: String) -> Property {
    Property(name: "all", value: value)
}

/// Resets all properties (except unicode-bidi and direction)
public func All(_ value: AllValue) -> Property {
    All(value.rawValue)
}
