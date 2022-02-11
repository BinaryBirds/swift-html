//
//  Video.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<video>` tag is used to embed video content in a document, such as a movie clip or other video streams.
///
/// The `<video>` tag contains one or more `<source>` tags with different video sources. The browser will choose the first source it supports.
///
/// The text between the `<video>` and `</video>` tags will only be displayed in browsers that do not support the `<video>` element.
///
/// There are three supported video formats in HTML: MP4, WebM, and OGG.
///
///     Browser | MP4 | WebM | Ogg
///     ------- | --- | ---- | ---
///     Edge    | YES | YES  | YES
///     Chrome  | YES | YES  | YES
///     Firefox | YES | YES  | YES
///     Safari  | YES | YES  | NO
///     Opera   | YES | YES  | YES
open class Video: Tag {

}

public extension Video {
    
    enum Preload: String {
        /// The author thinks that the browser should load the entire video when the page loads
        case auto
        /// The author thinks that the browser should load only metadata when the page loads
        case metadata
        /// The author thinks that the browser should NOT load the video when the page loads
        case none
    }
    
    /// Specifies that the video will start playing as soon as it is ready
    func autoplay(_ condition: Bool = true) -> Self {
        flagAttribute("autoplay", nil, condition)
    }
    
    /// Specifies that video controls should be displayed (such as a play/pause button etc).
    func controls(_ condition: Bool = true) -> Self {
        flagAttribute("controls", nil, condition)
    }
    
    /// Sets the height of the video player
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies that the video will start over again, every time it is finished
    func loop(_ condition: Bool = true) -> Self {
        flagAttribute("loop", nil, condition)
    }
    
    /// Specifies that the audio output of the video should be muted
    func muted(_ condition: Bool = true) -> Self {
        flagAttribute("muted", nil, condition)
    }
    
    /// Specifies an image to be shown while the video is downloading, or until the user hits the play button
    func poster(_ value: String) -> Self {
        attribute("poster", value)
    }
    
    /// Specifies if and how the author thinks the video should be loaded when the page loads
    func preload(_ value: Preload) -> Self {
        attribute("preload", value.rawValue)
    }
    
    /// Specifies the URL of the video file
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Sets the width of the video player
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}


