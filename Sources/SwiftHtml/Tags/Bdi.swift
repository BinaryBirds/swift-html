//
//  Bdi.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// BDI stands for Bi-Directional Isolation.
///
/// The `<bdi>` tag isolates a part of text that might be formatted in a different direction from other text outside it.
///
/// This element is useful when embedding user-generated content with an unknown text direction.
open class Bdi: Tag {
    
    open class override var name: String? { "bdi" }
}
