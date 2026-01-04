//
//  BackgroundAttachment.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundAttachmentValue: String {
    /// The background image will scroll with the page. This is default
    case scroll
    /// The background image will not scroll with the page
    case fixed
    /// The background image will scroll with the element's contents
    case local
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BackgroundAttachment: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background-attachment" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BackgroundAttachment {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BackgroundAttachment {

    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public init(_ value: BackgroundAttachmentValue = .scroll) {
        self.init(value.rawValue)
    }
}
