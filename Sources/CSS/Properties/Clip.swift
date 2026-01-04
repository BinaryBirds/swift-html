//
//  Clip.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ClipValue {
    /// No clipping will be applied. This is default    Play it »
    case auto
    /// Clips an element. The only valid value is: rect (top, right, bottom, left)    Play it »
    case shape(String)
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .shape(let value):
            return value
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Clip: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "clip" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Clip {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Clip {

    /// Clips an absolutely positioned element
    public init(_ value: ClipValue = .auto) {
        self.init(value.rawValue)
    }
}
