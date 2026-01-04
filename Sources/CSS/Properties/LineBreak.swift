//
//  LineBreak.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum LineBreakValue: String {
    case auto
    case loose
    case normal
    case strict
    case anywhere
    case inherit
    case initial
    case revert
    case unset
}

public struct LineBreak: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "line-break" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> LineBreak {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension LineBreak {

    /// Specifies how/if to break lines
    public init(_ value: LineBreakValue = .auto) {
        self.init(value.rawValue)
    }
}
