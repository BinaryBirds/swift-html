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

public struct AllProps: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "all" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AllProps {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AllProps {

    /// Resets all properties (except unicode-bidi and direction)
    public init(_ value: AllValue) {
        self.init(value.rawValue)
    }
}
