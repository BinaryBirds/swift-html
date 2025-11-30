/// The `<progress>` tag represents the completion progress of a task.
///
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Progress:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    ValueAttributeModifier
//✅value — Current value of the element
// max — Upper bound of range
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            //            Labelable element.
            .palpable,
        ]
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
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}

//    /// Specifies how much work the task requires in total. Default value is 1
//    public func max(_ value: String) -> Self {
//        attribute("max", value)
//    }
