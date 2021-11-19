//
//  Abbr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<abbr>` tag defines an abbreviation or an acronym, like "HTML", "CSS", "Mr.", "Dr.", "ASAP", "ATM".
///
/// **Tip:** Use the global title attribute to show the description for the abbreviation/acronym when you mouse over the element.
public final class Abbr: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "abbr", contents: contents))
    }
}

