//
//  Fieldset.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<fieldset>` tag is used to group related elements in a form.
/// 
/// The `<fieldset>` tag draws a box around the related elements.
public final class Fieldset: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "fieldset"), children: builder())
    }
}

public extension Fieldset {
    
    /// Specifies that a group of related form elements should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies which form the fieldset belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies a name for the fieldset
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
}
