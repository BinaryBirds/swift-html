//
//  BackgroundSize.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundSizeValue: String {
    /// Default value. The background image is displayed in its original size
    case auto
    /// Sets the width and height of the background image. The first value sets the width, the second value sets the height. If only one value is given, the second is set to "auto".
    case length
    /// Sets the width and height of the background image in percent of the parent element. The first value sets the width, the second value sets the height. If only one value is given, the second is set to "auto"
    case percentage
    /// Resize the background image to cover the entire container, even if it has to stretch the image or cut a little bit off one of the edges
    case cover
    /// Resize the background image to make sure the image is fully visible
    case contain
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BackgroundSize: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background-size" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackgroundSize {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackgroundSize {

    /// Specifies the size of the background images
    public init(_ value: BackgroundSizeValue = .auto) {
        self.init(value.rawValue)
    }
}
