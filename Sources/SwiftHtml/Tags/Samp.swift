//
//  Samp.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<samp>` tag is used to define sample output from a computer program. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS.
open class Samp: Tag {

    open class override var name: String? { "samp" }
}
