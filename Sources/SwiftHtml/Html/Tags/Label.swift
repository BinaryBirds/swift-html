//
//  Label.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<label>` tag defines a label for several elements:
///
/// - `<input type="checkbox">`
/// - `<input type="color">`
/// - `<input type="date">`
/// - `<input type="datetime-local">`
/// - `<input type="email">`
/// - `<input type="file">`
/// - `<input type="month">`
/// - `<input type="number">`
/// - `<input type="password">`
/// - `<input type="radio">`
/// - `<input type="range">`
/// - `<input type="search">`
/// - `<input type="tel">`
/// - `<input type="text">`
/// - `<input type="time">`
/// - `<input type="url">`
/// - `<input type="week">`
/// - `<meter>`
/// - `<progress>`
/// - `<select>`
/// - `<textarea>`
/// 
/// Proper use of labels with the elements above will benefit:
///
/// Screen reader users (will read out loud the label, when the user is focused on the element)
/// Users who have difficulty clicking on very small regions (such as checkboxes) - because when a user clicks the text within the `<label>` element, it toggles the input (this increases the hit area).
public final class Label: Tag {

    public convenience init(_ contents: String) {
        self.init(contents) {}
    }

    public convenience init(@TagBuilder _ builder: () -> [Tag]) {
        self.init("", builder)
    }
    
    public init(_ contents: String, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "label", contents: contents), tags: builder())
    }
}

public extension Label {
    /// Specifies the id of the form element the label should be bound to
    func `for`(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "for", value: value))
        return self
    }
    
    /// Specifies which form the label belongs to
    func form(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "form", value: value))
        return self
    }
}
