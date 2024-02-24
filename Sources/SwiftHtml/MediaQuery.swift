//
//  MediaQuery.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2022. 01. 24..
//

/// represents a CSS media query
public struct MediaQuery {

    /// device orientation
    public enum Orientation: String {
        /// portrait orientation
        case portrait
        /// landscape orientation
        case landscape
    }

    /// device color scheme
    public enum ColorScheme: String {
        /// light mode
        case light
        /// dark mode
        case dark
    }

    /// raw representation of the media query
    var value: String

}

extension MediaQuery {

    /// screen
    public static let screen = MediaQuery(value: "screen")

    /// device width in pixels
    public static func deviceWidth(px: Int) -> MediaQuery {
        .init(value: "(device-width: \(px)px)")
    }

    /// device height in pixels
    public static func deviceHeight(px: Int) -> MediaQuery {
        .init(value: "(device-height: \(px)px)")
    }

    /// device pixel ratio with webkit prefix
    public static func webkitDevicePixelRatio(_ value: Int) -> MediaQuery {
        .init(value: "(-webkit-device-pixel-ratio: \(value))")
    }

    /// device orientation
    public static func orientation(_ value: Orientation) -> MediaQuery {
        .init(value: "(orientation: \(value.rawValue))")
    }

    /// preferred color scheme
    public static func prefersColorScheme(_ value: ColorScheme) -> MediaQuery {
        .init(value: "(prefers-color-scheme: \(value.rawValue))")
    }
}
