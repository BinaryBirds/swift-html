//
//  Content.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ContentValue {
    /// Default value. Sets the content, if specified, to normal, which default is "none" (which is nothing)
    case normal
    /// Sets the content, if specified, to nothing
    case none
    /// Sets the content as a counter
    case counter
    /// Sets the content as one of the selector's attribute
    // @TODO: add attribute support
    //    case attr(attribute)
    /// Sets the content to the text you specify
    case string(String)
    /// Sets the content to be an opening quote
    case openQuote
    /// Sets the content to be a closing quote
    case closeQuote
    /// Removes the opening quote from the content, if specified
    case noOpenQuote
    /// Removes the closing quote from the content, if specified
    case noCloseQuote
    /// Sets the content to be some kind of media (an image, a sound, a video, etc.)
    // @TODO: add url support
    //    case url(String)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case .none:
            return "none"
        case .counter:
            return "counter"
        case .string(let value):
            return value
        case .openQuote:
            return "open-quote"
        case .closeQuote:
            return "close-quote"
        case .noOpenQuote:
            return "no-open-quote"
        case .noCloseQuote:
            return "no-close-quote"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Content: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "content" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Content {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Content {

    /// Used with the :before and :after pseudo-elements, to insert generated content
    public init(_ value: ContentValue = .normal) {
        self.init(value.rawValue)
    }
}
