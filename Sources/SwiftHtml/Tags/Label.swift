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
open class Label: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}

public extension Label {
    /// Specifies the id of the form element the label should be bound to
    func `for`(_ value: String) -> Self {
        attribute("for", value)
    }
    
    /// Specifies which form the label belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
}
