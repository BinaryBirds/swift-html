//
//  Br.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<br>` tag inserts a single line break.
/// 
/// The `<br>` tag is useful for writing addresses or poems.
/// 
/// The `<br>` tag is an empty tag which means that it has no end tag.
open class Br: EmptyTag {
    
    open class override var name: String? { "br" }
}
