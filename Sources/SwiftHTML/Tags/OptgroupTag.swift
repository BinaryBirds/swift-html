/// The `<optgroup>` tag is used to group related options in a `<select>` element (drop-down list).
///
/// If you have a long list of options, groups of related options are easier to handle for a user.
public struct Optgroup: StandardTag, GlobalAttributeModifier {

    public var attributes: AttributeStore
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
//
//extension Optgroup {
//
//    /// Specifies that an option-group should be disabled
//    public func disabled(_ condition: Bool = true) -> Self {
//        flagAttribute("disabled", nil, condition)
//    }
//
//    /// Specifies a label for an option-group
//    public func label(_ value: String) -> Self {
//        attribute("label", value)
//    }
//}
