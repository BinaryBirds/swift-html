//
//  AlignSelf.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AlignSelfValue: String {
    /// Default. The element inherits its parent container's align-items property, or "stretch" if it has no parent container
    case auto
    /// The element is positioned to fit the container
    case stretch
    /// The element is positioned at the center of the container
    case center
    /// The element is positioned at the beginning of the container
    case flexStart = "flex-start"
    /// The element is positioned at the end of the container
    case flexEnd = "flex-end"
    /// The element is positioned at the baseline of the container
    case baseline
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func AlignSelf(_ value: String) -> Property {
    Property(name: "align-self", value: value)
}

/// Specifies the alignment for selected items inside a flexible container
public func AlignSelf(_ value: AlignSelfValue = .auto) -> Property {
    AlignSelf(value.rawValue)
}
