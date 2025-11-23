/// Represents a CSS media query.
public struct MediaQuery: Sendable {

    /// Device orientation.
    public enum Orientation: String, Sendable {
        /// Portrait orientation.
        case portrait
        /// Landscape orientation.
        case landscape
    }

    /// Device color scheme.
    public enum ColorScheme: String, Sendable {
        /// Light mode.
        case light
        /// Dark mode.
        case dark
    }

    /// Raw representation of the media query.
    var value: String
}

extension MediaQuery {

    /// Screen.
    public static let screen = MediaQuery(value: "screen")

    /// Device width in pixels.
    public static func deviceWidth(px: Int) -> MediaQuery {
        .init(value: "(device-width: \(px)px)")
    }

    /// Device height in pixels.
    public static func deviceHeight(px: Int) -> MediaQuery {
        .init(value: "(device-height: \(px)px)")
    }

    /// Device pixel ratio with webkit prefix.
    public static func webkitDevicePixelRatio(_ value: Int) -> MediaQuery {
        .init(value: "(device-pixel-ratio: \(value))")
    }

    /// Device orientation.
    public static func orientation(_ value: Orientation) -> MediaQuery {
        .init(value: "(orientation: \(value.rawValue))")
    }

    /// Preferred color scheme.
    public static func prefersColorScheme(_ value: ColorScheme) -> MediaQuery {
        .init(value: "(prefers-color-scheme: \(value.rawValue))")
    }
}
