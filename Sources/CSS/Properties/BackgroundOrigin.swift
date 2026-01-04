//
//  BackgroundOrigin.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundOriginValue: String {
    /// Default value. The background image starts from the upper left corner of the padding edge
    case paddingBox = "padding-box"
    /// The background image starts from the upper left corner of the border
    case borderBox = "border-box"
    /// The background image starts from the upper left corner of the content
    case contentBox = "content-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BackgroundOrigin: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background-origin" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackgroundOrigin {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackgroundOrigin {

    /// Specifies the origin position of a background image
    public init(_ value: BackgroundOriginValue = .paddingBox) {
        self.init(value.rawValue)
    }
}
