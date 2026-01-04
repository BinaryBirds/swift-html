public struct Content: Property {
    public enum Value: Sendable {
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

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Used with the :before and :after pseudo-elements, to insert generated content
    public init(
        _ value: Value = .normal
    ) {
        self.name = "content"
        self.value = value.rawValue
        self.isImportant = false
    }
}
