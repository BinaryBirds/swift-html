//
//  Picture.swift
//  SwiftHtml
//
//  Created` by Tibor Bodecs on 2021. 07. 19..
//

/// The `<picture>` tag gives web developers more flexibility in specifying image resources.
///
/// The most common use of the `<picture>` element will be for art direction in responsive designs.
/// Instead of having one image that is scaled up or down based on the viewport width, multiple images can be designed to more nicely fill the browser viewport.
///
/// The `<picture>` element contains two tags: one or more `<source>` tags and one `<img>` tag.
///
/// The browser will look for the first <source> element where the media query matches the current viewport width, and then it will display the proper image (specified in the srcset attribute).
/// The `<img>` element is required as the last child of the `<picture>` element, as a fallback option if none of the source tags matches.
///
/// **Tip:** The `<picture>` element works "similar" to `<video>` and `<audio>`. You set up different sources, and the first source that fits the preferences is the one being used.
open class Picture: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
