//
//  MediaQuery.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2022. 01. 24..
//

public struct MediaQuery {
    
    public enum Orientation: String {
        case portrait
        case landscape
    }
    
    public enum ColorScheme: String {
        case light
        case dark
    }

    var value: String
        
}

public extension MediaQuery {

    static let screen = MediaQuery(value: "screen")
    
    static func deviceWidth(px: Int) -> MediaQuery {
        .init(value: "(device-width: \(px)px)")
    }
    
    static func deviceHeight(px: Int) -> MediaQuery {
        .init(value: "(device-height: \(px)px)")
    }
    
    static func webkitDevicePixelRatio(_ value: Int) -> MediaQuery {
        .init(value: "(-webkit-device-pixel-ratio: \(value))")
    }
    
    static func orientation(_ value: Orientation) -> MediaQuery {
        .init(value: "(orientation: \(value.rawValue))")
    }
    
    static func prefersColorScheme(_ value: ColorScheme) -> MediaQuery {
        .init(value: "(prefers-color-scheme: \(value.rawValue))")
    }
}
