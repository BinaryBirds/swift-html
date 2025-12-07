//
//  ObjectFit.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ObjectFitValue: String {
    /// This is default. The replaced content is sized to fill the element's content box. If necessary, the object will be stretched or squished to fit
    case fill
    /// The replaced content is scaled to maintain its aspect ratio while fitting within the element's content box
    case contain
    /// The replaced content is sized to maintain its aspect ratio while filling the element's entire content box. The object will be clipped to fit
    case cover
    /// The replaced content is not resized
    case none
    /// The content is sized as if none or contain were specified (would result in a smaller concrete object size)
    case scaleDown = "scale-down"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func ObjectFit(_ value: String) -> Property {
    Property(name: "object-fit", value: value)
}

/// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
public func ObjectFit(_ value: ObjectFitValue = .fill) -> Property {
    ObjectFit(value.rawValue)
}
