public struct Media: Rule {

    /// Represents a CSS media query .
    public struct Query: Sendable {

        /// Operators.
        public enum Operator: Sendable {
            /// Specifies a NOT operator.
            case not(Query)
            /// Specifies an AND operator.
            case and(Query, Query)
            /// Specifies an OR operator.
            case or(Query, Query)

            public var query: Query {
                switch self {
                case .not(let value):
                    return .init("not \(value.rawValue)")
                case .and(let lhs, let rhs):
                    return .init("\(lhs.rawValue) and \(rhs.rawValue)")
                case .or(let lhs, let rhs):
                    return .init("\(lhs.rawValue), \(rhs.rawValue)")
                }
            }
        }

        // MARK: -

        /// Scan
        public enum Scan: String, Sendable {
            /// Progressive scan.
            case progressive
            /// Interlace scan.
            case interlace
        }

        /// Grid.
        public enum Grid: String, Sendable {
            /// Grid.
            case yes = "1"
            /// Bitmap.
            case no = "0"
        }

        /// Device color scheme.
        public enum ColorScheme: String, Sendable {
            /// Light mode.
            case light
            /// Dark mode.
            case dark
        }

        public enum Prefix: String, Sendable {
            case equals = ""
            case min
            case max
        }

        /// Device orientation.
        public enum Orientation: String, Sendable {
            /// Portrait orientation.
            case portrait
            /// Landscape orientation.
            case landscape
        }

        public enum DisplayMode: String, Sendable {
            case browser
            case fullscreen
            case minimalUI = "minimal-ui"
            case pictureInPicture = "picture-in-picture"
            case standalone
            case windowControlsOverlay = "window-controls-overlay"
        }

        // MARK: -

        public enum Value: Sendable {
            /// Specifies the width of the targeted display area.
            case width(Prefix, String)
            /// Specifies the height of the  targeted display area.
            case height(Prefix, String)
            /// Specifies the width of the target display/paper.
            case deviceWidth(Prefix, String)
            /// Specifies the height of the target display/paper.
            case deviceHeight(Prefix, String)
            /// Specifies the width/height ratio of the targeted display area.
            case aspectRatio(Prefix, String)
            /// Specifies the device-width/device-height ratio of the target display/paper.
            case deviceAspectRatio(Prefix, String)
            /// Specifies the bits per color of target display.
            case color(Prefix, String)
            /// Specifies the number of colors the target display can handle.
            case colorIndex(Prefix, String)
            /// Specifies the pixel density (dpi or dpcm) of the target display/paper.
            case resolution(Prefix, String)
            /// Specifies the bits per pixel in a monochrome frame buffer.
            case monochrome(String)
            /// Specifies the display mode.
            case displayMode(DisplayMode)
            /// Specifies scanning method of a tv display.
            case scan(Scan)
            /// Specifies if the output device is grid or bitmap.
            case grid(Grid)
            /// Color scheme preference.
            case prefersColorScheme(ColorScheme)
            /// Specifies the orientation of the target display/paper.
            case orientation(Orientation)

            public var query: Query {

                func prefixed(
                    _ prefix: Prefix,
                    _ name: String
                ) -> String {
                    prefix == .equals ? name : "\(prefix.rawValue)-\(name)"
                }

                func feature(
                    _ name: String,
                    _ prefix: Prefix,
                    _ value: String
                ) -> Query {
                    .init("(\(prefixed(prefix, name)): \(value))")
                }

                switch self {
                case .width(let prefix, let value):
                    return feature("width", prefix, value)
                case .height(let prefix, let value):
                    return feature("height", prefix, value)
                case .deviceWidth(let prefix, let value):
                    return feature("device-width", prefix, value)
                case .deviceHeight(let prefix, let value):
                    return feature("device-height", prefix, value)
                case .aspectRatio(let prefix, let value):
                    return feature("aspect-ratio", prefix, value)
                case .deviceAspectRatio(let prefix, let value):
                    return feature("device-aspect-ratio", prefix, value)
                case .color(let prefix, let value):
                    return feature("color", prefix, value)
                case .colorIndex(let prefix, let value):
                    return feature("color-index", prefix, value)
                case .resolution(let prefix, let value):
                    return feature("resolution", prefix, value)
                case .monochrome(let value):
                    return .init("(monochrome: \(value)")
                case .displayMode(let value):
                    return .init("(display-mode: \(value.rawValue))")
                case .scan(let value):
                    return .init("(scan: \(value.rawValue))")
                case .grid(let value):
                    return .init("(grid: \(value.rawValue))")
                case .prefersColorScheme(let value):
                    return .init("(prefers-color-scheme: \(value.rawValue))")
                case .orientation(let value):
                    return .init("(orientation: \(value.rawValue))")
                }
            }
        }

        /// Devices.
        public enum Device: String, Sendable {
            /// Default; suitable for all devices.
            case all
            /// Speech synthesizers.
            case aural
            /// Braille feedback devices.
            case braille
            /// Handheld devices (small screen, limited bandwidth).
            case handheld
            /// Projectors.
            case projection
            /// Print preview mode/printed pages.
            case print
            /// Computer screens.
            case screen
            /// Teletypes and similar media using a fixed-pitch character grid.
            case tty
            /// Television type devices (low resolution, limited scroll ability).
            case tv

            public var query: Query {
                .init(rawValue)
            }
        }

        public let rawValue: String

        public init(
            _ rawValue: String
        ) {
            self.rawValue = rawValue
        }
    }

    public var query: Query?
    public var selectors: [Selector]

    public init(
        _ query: Query? = nil,
        @Builder<Selector> _ builder: () -> [Selector]
    ) {
        self.query = query
        self.selectors = builder()
    }
}

public prefix func ! (
    value: Media.Query
) -> Media.Query {
    Media.Query.Operator.not(value).query
}

public func && (
    lhs: Media.Query,
    rhs: Media.Query
) -> Media.Query {
    Media.Query.Operator.and(lhs, rhs).query
}

public func || (
    lhs: Media.Query,
    rhs: Media.Query
) -> Media.Query {
    Media.Query.Operator.or(lhs, rhs).query
}

extension Media.Query {

    static func custom(_ value: String) -> Self {
        .init(value)
    }

    // devices
    static var all: Self { Media.Query.Device.all.query }
    static var aural: Self { Media.Query.Device.aural.query }
    static var braille: Self { Media.Query.Device.braille.query }
    static var handheld: Self { Media.Query.Device.handheld.query }
    static var projection: Self { Media.Query.Device.projection.query }
    static var print: Self { Media.Query.Device.print.query }
    static var screen: Self { Media.Query.Device.screen.query }
    static var tty: Self { Media.Query.Device.tty.query }
    static var tv: Self { Media.Query.Device.tv.query }

    // values

    static func width(_ value: String) -> Self {
        Media.Query.Value.width(.equals, value).query
    }

    static func width(_ unit: UnitRepresentable) -> Self {
        .width(unit.rawValue)
    }

    static func minWidth(_ value: String) -> Self {
        Media.Query.Value.width(.min, value).query
    }

    static func minWidth(_ unit: UnitRepresentable) -> Self {
        .minWidth(unit.rawValue)
    }

    static func maxWidth(_ value: String) -> Self {
        Media.Query.Value.width(.max, value).query
    }

    static func maxWidth(_ unit: UnitRepresentable) -> Self {
        .maxWidth(unit.rawValue)
    }

    static func height(_ value: String) -> Self {
        Media.Query.Value.height(.equals, value).query
    }

    static func height(_ unit: UnitRepresentable) -> Self {
        .height(unit.rawValue)
    }

    static func minHeight(_ value: String) -> Self {
        Media.Query.Value.height(.min, value).query
    }

    static func minHeight(_ unit: UnitRepresentable) -> Self {
        .minHeight(unit.rawValue)
    }

    static func maxHeight(_ value: String) -> Self {
        Media.Query.Value.height(.max, value).query
    }

    static func maxHeight(_ unit: UnitRepresentable) -> Self {
        .maxHeight(unit.rawValue)
    }

    static func deviceWidth(_ value: String) -> Self {
        Media.Query.Value.deviceWidth(.equals, value).query
    }

    static func deviceWidth(_ unit: UnitRepresentable) -> Self {
        .deviceWidth(unit.rawValue)
    }

    static func deviceMinWidth(_ value: String) -> Self {
        Media.Query.Value.deviceWidth(.min, value).query
    }

    static func deviceMinWidth(_ unit: UnitRepresentable) -> Self {
        .deviceMinWidth(unit.rawValue)
    }

    static func deviceMaxWidth(_ value: String) -> Self {
        Media.Query.Value.deviceWidth(.max, value).query
    }

    static func deviceMaxWidth(_ unit: UnitRepresentable) -> Self {
        .deviceMaxWidth(unit.rawValue)
    }

    static func deviceHeight(_ value: String) -> Self {
        Media.Query.Value.deviceHeight(.equals, value).query
    }

    static func deviceHeight(_ unit: UnitRepresentable) -> Self {
        .deviceHeight(unit.rawValue)
    }

    static func deviceMinHeight(_ value: String) -> Self {
        Media.Query.Value.deviceHeight(.min, value).query
    }

    static func deviceMinHeight(_ unit: UnitRepresentable) -> Self {
        .deviceMinHeight(unit.rawValue)
    }

    static func deviceMaxHeight(_ value: String) -> Self {
        Media.Query.Value.deviceHeight(.max, value).query
    }

    static func deviceMaxHeight(_ unit: UnitRepresentable) -> Self {
        .deviceMaxHeight(unit.rawValue)
    }

    static func aspectRatio(_ value: String) -> Self {
        Media.Query.Value.aspectRatio(.equals, value).query
    }

    static func minAspectRatio(_ value: String) -> Self {
        Media.Query.Value.aspectRatio(.min, value).query
    }

    static func maxAspectRatio(_ value: String) -> Self {
        Media.Query.Value.aspectRatio(.max, value).query
    }

    static func deviceAspectRatio(_ value: String) -> Self {
        Media.Query.Value.deviceAspectRatio(.equals, value).query
    }

    static func deviceMinAspectRatio(_ value: String) -> Self {
        Media.Query.Value.deviceAspectRatio(.min, value).query
    }

    static func deviceMaxAspectRatio(_ value: String) -> Self {
        Media.Query.Value.deviceAspectRatio(.max, value).query
    }

    static func color(_ value: String) -> Self {
        Media.Query.Value.color(.equals, value).query
    }

    static func minColor(_ value: String) -> Self {
        Media.Query.Value.color(.min, value).query
    }

    static func maxColor(_ value: String) -> Self {
        Media.Query.Value.color(.max, value).query
    }

    static func colorIndex(_ value: String) -> Self {
        Media.Query.Value.colorIndex(.equals, value).query
    }

    static func minColorIndex(_ value: String) -> Self {
        Media.Query.Value.colorIndex(.min, value).query
    }

    static func maxColorIndex(_ value: String) -> Self {
        Media.Query.Value.colorIndex(.max, value).query
    }

    static func monochrome(_ value: String) -> Self {
        Media.Query.Value.monochrome(value).query
    }

    static func resolution(_ value: String) -> Self {
        Media.Query.Value.resolution(.equals, value).query
    }

    static func minResolution(_ value: String) -> Self {
        Media.Query.Value.resolution(.min, value).query
    }

    static func maxResolution(_ value: String) -> Self {
        Media.Query.Value.resolution(.max, value).query
    }

    static func grid(_ value: Media.Query.Grid) -> Self {
        Media.Query.Value.grid(value).query
    }

    static func displayMode(_ value: Media.Query.DisplayMode) -> Self {
        Media.Query.Value.displayMode(value).query
    }

    static func scan(_ value: Media.Query.Scan) -> Self {
        Media.Query.Value.scan(value).query
    }

    static func prefersColorScheme(_ value: Media.Query.ColorScheme) -> Self {
        Media.Query.Value.prefersColorScheme(value).query
    }

    static func orientation(_ value: Media.Query.Orientation) -> Self {
        Media.Query.Value.orientation(value).query
    }
}
