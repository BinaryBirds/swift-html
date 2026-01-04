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

public struct ObjectFit: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "object-fit" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ObjectFit {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ObjectFit {

    /// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    public init(_ value: ObjectFitValue = .fill) {
        self.init(value.rawValue)
    }
}
