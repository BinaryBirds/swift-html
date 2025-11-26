////
////  Global.swift
////  SwiftHtml
////
////  Created by Tibor Bodecs on 2021. 07. 19..
////
//
///// https://www.w3schools.com/tags/ref_standardattributes.asp
//public enum TextDirection: String {
//    /// Default. Left-to-right text direction
//    case ltr
//    /// Right-to-left text direction
//    case rtl
//    /// Let the browser figure out the text direction, based on the content (only recommended if the text direction is unknown)
//    case auto
//}
//
//public enum Draggable: String {
//    /// Specifies that the element is draggable
//    case `true`
//    /// Specifies that the element is not draggable
//    case `false`
//    /// Uses the default behavior of the browser
//    case auto
//}
//
//public enum Translate: String {
//    /// Specifies that the content of the element should be translated
//    case yes
//    /// Specifies that the content of the element must not be translated
//    case no
//}
//
//extension Tag {
//
//    // MARK: - style management
//
//    /// find an existing style attribute and return the value as an array of strings or an empty array
//    private var styleArray: [String] {
//        node.attributes.first { $0.key == "style" }?.value?.styleArray ?? []
//    }
//
//    /// Specifies one stylename for an element (refers to a style in a style sheet)
//    public func style(_ value: String?, _ condition: Bool = true) -> Self {
//        guard let value, !value.isEmpty else { return self }
//        return attribute("style", value, condition)
//    }
//
//    /// Specifies multiple stylenames for an element (refers to a style in a style sheet)
//    public func style(_ values: [String], _ condition: Bool = true) -> Self {
//        /// @NOTE: explicit true flag is needed, otherwise Swift won't know which function to call...
//        style(values.styleString, condition)
//    }
//
//    /// Specifies multiple stylenames for an element (refers to a style in a style sheet)
//    public func style(_ values: String...) -> Self {
//        style(values)
//    }
//
//    /// Adds a single value to the style list if the condition is true
//    ///
//    /// Note: If the value is empty or nil it won't be added to the list
//    ///
//    public func style(add value: String?, _ condition: Bool = true) -> Self {
//        guard let value = value else {
//            return self
//        }
//        return style(add: [value], condition)
//    }
//
//    /// Adds an array of values to the style list if the condition is true
//    ///
//    /// Note: If the value is empty it won't be added to the list
//    ///
//    public func style(add values: [String], _ condition: Bool = true) -> Self {
//        let newValues = styleArray + values.filter { !$0.isEmpty }
//
//        var newValue: String? = nil
//        if !newValues.isEmpty {
//            newValue = newValues.styleString
//        }
//        return style(newValue, condition)
//    }
//
//    /// Removes a given style values if the condition is true
//    public func style(remove value: String?, _ condition: Bool = true) -> Self {
//        guard let value = value else {
//            return self
//        }
//        return style(remove: [value], condition)
//    }
//
//    /// Removes an array of style values if the condition is true
//    public func style(remove values: [String], _ condition: Bool = true) -> Self
//    {
//        let newClasses = styleArray.filter { !values.contains($0) }
//        if newClasses.isEmpty {
//            return deleteAttribute("style")
//        }
//        return style(newClasses, condition)
//    }
//
//    /// Removes a given style value with its key name if the condition is true
//    /// `.style(removeByKey: "font-size")` as opposed to `.style(remove: "font-size: 12rem")`
//    public func style(removeByKey value: String?, _ condition: Bool = true)
//        -> Self
//    {
//        guard let value = value else {
//            return self
//        }
//        return style(removeByKey: [value], condition)
//    }
//
//    /// Removes an array of style values with the key name if the condition is true
//    /// `.style(removeByKey:[ "font-size"])` as opposed to `.style(remove: ["font-size: 12rem"])`
//    public func style(removeByKey values: [String], _ condition: Bool = true)
//        -> Self
//    {
//        let newClasses = styleArray.filter {
//            !values.contains(String($0.prefix(while: { $0 != ":" })))
//        }
//        if newClasses.isEmpty {
//            return deleteAttribute("style")
//        }
//        return style(newClasses, condition)
//    }
//
//    /// toggles a single style value
//    public func style(toggle value: String?, _ condition: Bool = true) -> Self {
//        guard let value = value else {
//            return self
//        }
//        if styleArray.contains(value) {
//            return style(remove: value, condition)
//        }
//        return style(add: value, condition)
//    }
//
//    // MARK: - other global attributes
//
//    /// Specifies a shortcut key to activate/focus an element
//    public func accesskey(_ value: Character) -> Self {
//        attribute("accesskey", String(value))
//    }
//
//    /// Specifies whether the content of an element is editable or not
//    public func contenteditable(_ value: Bool) -> Self {
//        attribute("contenteditable", String(value))
//    }
//
//    /// Used to store custom data private to the page or application
//    public func data(key: String, _ value: String) -> Self {
//        attribute("data-" + key, value)
//    }
//
//    /// Specifies the text direction for the content in an element
//    public func dir(_ value: TextDirection = .ltr) -> Self {
//        attribute("dir", value.rawValue)
//    }
//
//    /// Specifies whether an element is draggable or not
//    public func draggable(_ value: Draggable = .auto) -> Self {
//        attribute("draggable", value.rawValue)
//    }
//
//    /// Specifies that an element is not yet, or is no longer, relevant
//    public func hidden(_ value: Bool? = nil) -> Self {
//        attribute("hidden", value?.description)
//    }
//
//    /// Specifies a unique id for an element
//    public func `id`(_ value: String) -> Self {
//        attribute("id", value)
//    }
//
//    /// Specifies the language of the element's content
//    public func lang(_ value: String) -> Self {
//        attribute("lang", value)
//    }
//
//    /// Specifies whether the element is to have its spelling and grammar checked or not
//    public func spellcheck(_ value: Bool) -> Self {
//        attribute("spellcheck", String(value))
//    }
//
//    /// Specifies the tabbing order of an element
//    public func tabindex(_ value: Int) -> Self {
//        attribute("tabindex", String(value))
//    }
//
//    /// Specifies extra information about an element
//    public func title(_ value: String) -> Self {
//        attribute("title", value)
//    }
//
//    /// Specifies whether the content of an element should be translated or not
//    public func translate(_ value: Translate) -> Self {
//        attribute("translate", value.rawValue)
//    }
//}
