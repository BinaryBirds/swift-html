import SGML

/// The `<label>` tag defines a label for several elements.
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
public struct Label:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ForAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        [.flow, .phrasing, .interactive, .palpable]
    }

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
