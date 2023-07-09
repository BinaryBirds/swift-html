//
//  Dialog.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<dialog>` tag defines a dialog box or subwindow.
///
/// The `<dialog>` element makes it easy to create popup dialogs and modals on a web page.
open class Dialog: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}

public extension Dialog {
    
    /// Specifies that the dialog element is active and that the user can interact with it
    func open(_ condition: Bool = true) -> Self {
        flagAttribute("open", nil, condition)
    }
}
