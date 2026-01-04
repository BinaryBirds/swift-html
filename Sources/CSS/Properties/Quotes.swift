public struct Quotes: Property {
    public enum Value: Sendable {

        /// Specifies that the "open-quote" and "close-quote" values of the "content" property will not produce any quotation marks
        case none
        /// Specifies which quotation marks to use.
        ///
        /// The first two values specifies the first level of quotation embedding, the next two values specifies the next level of quote embedding, etc
        /// ```
        /// "    double quote    \0022
        /// '    single quote    \0027
        /// ‹    single, left angle quote    \2039
        /// ›    single, right angle quote    \203A
        /// «    double, left angle quote    \00AB
        /// »    double, right angle quote    \00BB
        /// ‘    left quote (single high-6)    \2018
        /// ’    right quote (single high-9)    \2019
        /// “    left quote (double high-6)    \201C
        /// ”    right quote (double high-9)    \201D
        /// „    double quote (double low-9)    \201E
        /// ```
        case marks(String, String, String, String)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .marks(let a, let b, let c, let d):
                return a + " " + b + " " + c + " " + d
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

    /// Sets the type of quotation marks for embedded quotations
    public init(
        _ value: Value
    ) {
        self.name = "quotes"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the type of quotation marks for embedded quotations
    public init(_ a: String, _ b: String, _ c: String, _ d: String) {
        self.init(.marks(a, b, c, d))
    }
}
