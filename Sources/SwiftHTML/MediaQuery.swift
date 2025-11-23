///// Represents a CSS media query.
//public struct MediaQuery: Sendable {
//
//    /// Operators.
//    public enum Operators: String, Sendable {
//        /// Specifies an AND operator.
//        case and
//        /// Specifies a NOT operator.
//        case not
//        /// Specifies an OR operator.
//        case or = ","
//    }
//
//    /// Devices.
//    public enum Devices: String, Sendable {
//        /// Default; suitable for all devices.
//        case all
//        /// Speech synthesizers.
//        case aural
//        /// Braille feedback devices.
//        case braille
//        /// Handheld devices (small screen, limited bandwidth).
//        case handheld
//        /// Projectors.
//        case projection
//        /// Print preview mode/printed pages.
//        case print
//        /// Computer screens.
//        case screen
//        /// Teletypes and similar media using a fixed-pitch character grid.
//        case tty
//        /// Television type devices (low resolution, limited scroll ability).
//        case tv
//
//    }
//
//    /// Device orientation.
//    public enum Orientation: String, Sendable {
//        /// Portrait orientation.
//        case portrait
//        /// Landscape orientation.
//        case landscape
//    }
//
//    /// Scan
//    public enum Scan: String, Sendable {
//        /// Progressive scan.
//        case progressive
//        /// Interlace scan.
//        case interlace
//    }
//
//    /// Grid.
//    public enum Grid: String, Sendable {
//        /// Grid.
//        case yes = "1"
//        /// Bitmap.
//        case no = "0"
//    }
//
//    /// Device color scheme.
//    public enum ColorScheme: String, Sendable {
//        /// Light mode.
//        case light
//        /// Dark mode.
//        case dark
//    }
//
//    public enum Prefix: String, Sendable {
//        case none = ""
//        case min
//        case max
//    }
//
//    public enum VVV: Sendable {
//        /// Specifies the width of the targeted display area.
//        case width(Prefix, String)
//        /// Specifies the height of the  targeted display area.
//        case height(Prefix, String)
//        /// Specifies the width of the target display/paper.
//        case deviceWidth(Prefix, String)
//        /// Specifies the height of the target display/paper.
//        case deviceHeight(Prefix, String)
//        /// Specifies the orientation of the target display/paper.
//        case orientation(Orientation)
//        /// Specifies the width/height ratio of the targeted display area.
//        case aspectRatio(Prefix, String)
//        /// Specifies the device-width/device-height ratio of the target display/paper.
//        case deviceAspectRatio(Prefix, String)
//        /// Specifies the bits per color of target display.
//        case color(Prefix, String)
//        /// Specifies the number of colors the target display can handle.
//        case colorIndex(Prefix, String)
//        /// Specifies the bits per pixel in a monochrome frame buffer.
//        case monochrome(Prefix, String)
//        /// Specifies the pixel density (dpi or dpcm) of the target display/paper.
//        case resolution(Prefix, String)
//        /// Specifies scanning method of a tv display.
//        case scan(Scan)
//        /// Specifies if the output device is grid or bitmap.
//        case grid(Grid)
//        /// Color scheme preference.
//        case prefersColorScheme(ColorScheme)
//    }
//
//    /// Raw representation of the media query.
//    var value: String
//}
//
//extension MediaQuery {
//
//    public struct Value {
//
//        let rawValue: String
//
//        private init(_ rawValue: String) {
//            self.rawValue = rawValue
//        }
//
//        /// Device width in pixels.
//        public static func deviceWidth(px: Int) -> Self {
//            .init("(device-width: \(px)px)")
//        }
//
//        /// Device height in pixels.
//        public static func deviceHeight(px: Int) -> Self {
//            .init("(device-height: \(px)px)")
//        }
//
//        /// Device pixel ratio with webkit prefix.
//        public static func webkitDevicePixelRatio(_ value: Int) -> Self {
//            .init("(device-pixel-ratio: \(value))")
//        }
//
//        /// Device orientation.
//        public static func orientation(_ value: Orientation) -> Self {
//            .init("(orientation: \(value.rawValue))")
//        }
//
//        /// Preferred color scheme.
//        public static func prefersColorScheme(_ value: ColorScheme) -> Self {
//            .init("(prefers-color-scheme: \(value.rawValue))")
//        }
//    }
//}
