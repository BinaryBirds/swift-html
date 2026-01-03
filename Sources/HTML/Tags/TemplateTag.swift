import SGML

/// The `<template>` tag is used as a container to hold some HTML content hidden from the user when the page loads.
///
/// The content inside `<template>` can be rendered later with a JavaScript.
///
/// You can use the `<template>` tag if you have some HTML code you want to use over and over again, but not until you ask for it.
/// To do this without the `<template>` tag, you have to create the HTML code with JavaScript to prevent the browser from rendering the code.
public struct Template:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ShadowRootModeAttributeModifier,
    ShadowRootDelegatesFocusAttributeModifier,
    ShadowRootClonableAttributeModifier,
    ShadowRootSerializableAttributeModifier,
    ShadowRootCustomElementRegistryAttributeModifier,
    // categories
    MetadataContent,
    FlowContent,
    PhrasingContent,
    ScriptSupportingContent,
    SelectInnerContent,
    OptgroupInnerContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

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
