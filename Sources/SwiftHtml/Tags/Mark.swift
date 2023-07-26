//
//  Mark.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<mark>` tag defines text that should be marked or highlighted.
open class Mark: StandardTag {
    
    override open class var name: String { .init(describing: Mark.self).lowercased() }
}
