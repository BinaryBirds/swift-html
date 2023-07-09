//
//  Address.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<address>` tag defines the contact information for the author/owner of a document or an article.
///
/// The contact information can be an email address, URL, physical address, phone number, social media handle, etc.
///
/// The text in the `<address>` element usually renders in italic, and browsers will always add a line break before and after the `<address>` element.
open class Address: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}
