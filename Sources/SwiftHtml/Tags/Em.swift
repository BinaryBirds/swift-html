//
//  Em.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<em>` tag is used to define emphasized text. The content inside is typically displayed in italic.
///
/// A screen reader will pronounce the words in `<em>` with an emphasis, using verbal stress.
open class Em: Tag {

    open class override var name: String? { "em" }
}
