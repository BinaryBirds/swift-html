public struct Font: Property {
    public enum Value: Sendable {
        /// font-style    Specifies the font style. Default value is "normal"
        /// font-variant    Specifies the font variant. Default value is "normal"
        /// font-weight    Specifies the font weight. Default value is "normal"
        /// font-size/line-height    Specifies the font size and the line-height. Default value is "normal"
        /// font-family    Specifies the font family. Default value depends on the browser
        case values(
            FontStyle.Value,
            FontVariant.Value,
            FontWeight.Value,
            FontSize.Value,
            LineHeight.Value,
            FontFamily.Value
        )
        /// Uses the font that are used by captioned controls (like buttons, drop-downs, etc.)
        case caption
        /// Uses the font that are used by icon labels
        case icon
        /// Uses the fonts that are used by dropdown menus
        case menu
        /// Uses the fonts that are used by dialog boxes
        case messageBox
        /// A smaller version of the caption font
        case smallCaption
        /// Uses the fonts that are used by the status bar
        case statusBar
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let style,
                let variant,
                let weight,
                let size,
                let lineHeight,
                let family
            ):
                return [
                    style.rawValue,
                    variant.rawValue,
                    weight.rawValue,
                    size.rawValue + "/" + lineHeight.rawValue,
                    family.rawValue,
                ]
                .joined(separator: " ")
            case .caption:
                return "caption"
            case .icon:
                return "icon"
            case .menu:
                return "menu"
            case .messageBox:
                return "message-box"
            case .smallCaption:
                return "small-caption"
            case .statusBar:
                return "status-bar"
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

    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public init(
        _ value: Value
    ) {
        self.name = "font"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public init(
        _ style: FontStyle.Value,
        _ variant: FontVariant.Value,
        _ weight: FontWeight.Value,
        _ size: FontSize.Value,
        _ lineHeight: LineHeight.Value,
        _ family: FontFamily.Value
    ) {
        self.init(.values(style, variant, weight, size, lineHeight, family))
    }
}
