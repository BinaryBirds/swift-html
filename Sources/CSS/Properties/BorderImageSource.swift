//
//  BorderImageSource.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageSourceValue {
    /// No image will be used
    case none
    /// The path to the image to be used as a border
    case image(String)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .image(let value):
            return "url('\(value)')"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct BorderImageSource: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-image-source" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderImageSource {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderImageSource {

    /// Specifies the path to the image to be used as a border
    public init(_ value: BorderImageSourceValue) {
        self.init(value.rawValue)
    }
}
