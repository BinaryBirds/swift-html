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

public func LineBreak(_ value: String) -> Property {
    Property(name: "line-break", value: value)
}

/// Specifies how/if to break lines
public func LineBreak(_ value: LineBreakValue = .auto) -> Property {
    LineBreak(value.rawValue)
}
