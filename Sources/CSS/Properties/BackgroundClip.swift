//
//  BackgroundClip.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundClipValue: String {
    /// Default value. The background extends behind the border
    case borderBox = "border-box"
    /// The background extends to the inside edge of the border
    case paddingBox = "padding-box"
    /// The background extends to the edge of the content box
    case contentBox = "content-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BackgroundClip: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background-clip" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackgroundClip {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackgroundClip {

    /// Defines how far the background (color or image) should extend within an element
    public init(_ value: BackgroundClipValue = .borderBox) {
        self.init(value.rawValue)
    }
}
