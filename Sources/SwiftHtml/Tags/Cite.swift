//
//  Cite.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<cite>` tag defines the title of a creative work (e.g. a book, a poem, a song, a movie, a painting, a sculpture, etc.).
/// 
/// **Note:** A person's name is not the title of a work.
/// 
/// The text in the `<cite>` element usually renders in italic.
open class Cite: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
