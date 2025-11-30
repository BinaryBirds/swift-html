/// The `<template>` tag is used as a container to hold some HTML content hidden from the user when the page loads.
///
/// The content inside `<template>` can be rendered later with a JavaScript.
///
/// You can use the `<template>` tag if you have some HTML code you want to use over and over again, but not until you ask for it.
/// To do this without the `<template>` tag, you have to create the HTML code with JavaScript to prevent the browser from rendering the code.
public struct Template:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier
//shadowrootmode — Enables streaming declarative shadow roots
//shadowrootdelegatesfocus — Sets delegates focus on a declarative shadow root
//shadowrootclonable — Sets clonable on a declarative shadow root
//shadowrootserializable — Sets serializable on a declarative shadow root
//shadowrootcustomelementregistry — Enables declarative shadow roots to indicate they will use a custom element registry
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata,
            .flow,
            .phrasing,
            //            Script-supporting element.
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
