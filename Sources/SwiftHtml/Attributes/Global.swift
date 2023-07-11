//
//  Global.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// https://www.w3schools.com/tags/ref_standardattributes.asp
public enum TextDirection: String {
    /// Default. Left-to-right text direction
    case ltr
    /// Right-to-left text direction
    case rtl
    /// Let the browser figure out the text direction, based on the content (only recommended if the text direction is unknown)
    case auto
}

public enum Draggable: String {
    /// Specifies that the element is draggable
    case `true`
    /// Specifies that the element is not draggable
    case `false`
    /// Uses the default behavior of the browser
    case auto
}

public enum Translate: String {
    /// Specifies that the content of the element should be translated
    case yes
    /// Specifies that the content of the element must not be translated
    case no
}

private extension String {

    /// turns a list of class values (separated by a space" into an array of strings
    var classArray: [String] {
        split(separator: " ").map { String($0) }
    }
    
    /// turns a list of style values (separated by a semicolon) into an array of strings
    var styleArray: [String] {
        split(separator: ";").map { String($0) }
    }
}

private extension Array where Element == String {
    
    var classString: String {
        filter { !$0.isEmpty }.joined(separator: " ")
    }
    
    var styleString: String {
        filter { !$0.isEmpty }.joined(separator: ";")
    }
}

public extension TagRepresentable {
        
    // MARK: - class management

    /// find an existing class attribute and return the value as an array of strings or an empty array
    private var classArray: [String] {
        node.attributes.first { $0.key == "class" }?.value?.classArray ?? []
    }

    /// Specifies one classname for an element (refers to a class in a style sheet)
    func `class`(_ value: String?, _ condition: Bool = true) -> Self {
        attribute("class", value, condition)
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    func `class`(_ values: [String], _ condition: Bool = true) -> Self {
        /// @NOTE: explicit true flag is needed, otherwise Swift won't know which function to call...
        `class`(values.classString, condition)
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    func `class`(_ values: String...) -> Self {
        `class`(values)
    }
    
    /// Adds a single value to the class list if the condition is true
    ///
    /// Note: If the value is empty or nil it won't be added to the list
    ///
    func `class`(add value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return `class`(add: [value], condition)
    }
    
    /// Adds an array of values to the class list if the condition is true
    ///
    /// Note: If the value is empty it won't be added to the list
    ///
    func `class`(add values: [String], _ condition: Bool = true) -> Self {
        let newValues = classArray + values.filter { !$0.isEmpty }

        var newValue: String? = nil
        if !newValues.isEmpty {
            newValue = newValues.classString
        }
        return `class`(newValue, condition)
    }
    
    /// Removes a given class values if the condition is true
    func `class`(remove value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return `class`(remove: [value], condition)
    }
    
    /// Removes an array of class values if the condition is true
    func `class`(remove values: [String], _ condition: Bool = true) -> Self {
        let newClasses = classArray.filter { !values.contains($0) }
        if newClasses.isEmpty {
            return deleteAttribute("class", condition)
        }
        return `class`(newClasses, condition)
    }
    
    /// toggles a single class value
    func `class`(toggle value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        if classArray.contains(value) {
            return `class`(remove: value, condition)
        }
        return `class`(add: value, condition)
    }

    // MARK: - style management

    /// find an existing style attribute and return the value as an array of strings or an empty array
    private var styleArray: [String] {
        node.attributes.first { $0.key == "style" }?.value?.styleArray ?? []
    }

    /// Specifies one stylename for an element (refers to a style in a style sheet)
    func style(_ value: String?, _ condition: Bool = true) -> Self {
        guard let value, !value.isEmpty else { return self }
        return attribute("style", value, condition)
    }

    /// Specifies multiple stylenames for an element (refers to a style in a style sheet)
    func style(_ values: [String], _ condition: Bool = true) -> Self {
        /// @NOTE: explicit true flag is needed, otherwise Swift won't know which function to call...
        style(values.styleString, condition)
    }

    /// Specifies multiple stylenames for an element (refers to a style in a style sheet)
    func style(_ values: String...) -> Self {
        style(values)
    }
    
    /// Adds a single value to the style list if the condition is true
    ///
    /// Note: If the value is empty or nil it won't be added to the list
    ///
    func style(add value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return style(add: [value], condition)
    }
    
    /// Adds an array of values to the style list if the condition is true
    ///
    /// Note: If the value is empty it won't be added to the list
    ///
    func style(add values: [String], _ condition: Bool = true) -> Self {
        let newValues = styleArray + values.filter { !$0.isEmpty }

        var newValue: String? = nil
        if !newValues.isEmpty {
            newValue = newValues.styleString
        }
        return style(newValue, condition)
    }
    
    /// Removes a given style values if the condition is true
    func style(remove value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return style(remove: [value], condition)
    }
    
    /// Removes an array of style values if the condition is true
    func style(remove values: [String], _ condition: Bool = true) -> Self {
        let newClasses = styleArray.filter { !values.contains($0) }
        if newClasses.isEmpty {
            return deleteAttribute("style", condition)
        }
        return style(newClasses, condition)
    }
    
    /// Removes a given style value with its key name if the condition is true
    /// `.style(removeByKey: "font-size")` as opposed to `.style(remove: "font-size: 12rem")`
    func style(removeByKey value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return style(removeByKey: [value], condition)
    }

    
    /// Removes an array of style values with the key name if the condition is true
    /// `.style(removeByKey:[ "font-size"])` as opposed to `.style(remove: ["font-size: 12rem"])`
    func style(removeByKey values: [String], _ condition: Bool = true) -> Self {
        let newClasses = styleArray.filter { !values.contains(String($0.prefix(while: {$0 != ":"}))) }
        if newClasses.isEmpty {
            return deleteAttribute("style", condition)
        }
        return style(newClasses, condition)
    }
    
    /// toggles a single style value
    func style(toggle value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        if styleArray.contains(value) {
            return style(remove: value, condition)
        }
        return style(add: value, condition)
    }

    
    // MARK: - other global attributes
    
    /// Specifies a shortcut key to activate/focus an element
    func accesskey(_ value: Character) -> Self {
        attribute("accesskey", String(value), true)
    }
    
    /// Specifies whether the content of an element is editable or not
    func contenteditable(_ value: Bool) -> Self {
        attribute("contenteditable", String(value), true)
    }
    
    /// Used to store custom data private to the page or application
    func data(key: String, _ value: String) -> Self {
        attribute("data-" + key, value, true)
    }

    /// Specifies the text direction for the content in an element
    func dir(_ value: TextDirection = .ltr) -> Self {
        attribute("dir", value.rawValue, true)
    }
    
    /// Specifies whether an element is draggable or not
    func draggable(_ value: Draggable = .auto) -> Self {
        attribute("draggable", value.rawValue, true)
    }
    
    /// Specifies that an element is not yet, or is no longer, relevant
    func hidden(_ value: Bool? = nil) -> Self {
        attribute("hidden", value?.description, true)
    }
    
    /// Specifies a unique id for an element
    func `id`(_ value: String) -> Self {
        attribute("id", value, true)
    }
    
    /// Specifies the language of the element's content
    func lang(_ value: String) -> Self {
        attribute("lang", value, true)
    }
    
    /// Specifies whether the element is to have its spelling and grammar checked or not
    func spellcheck(_ value: Bool) -> Self {
        attribute("spellcheck", String(value), true)
    }
    
    /// Specifies the tabbing order of an element
    func tabindex(_ value: Int) -> Self {
        attribute("tabindex", String(value), true)
    }
    
    /// Specifies extra information about an element
    func title(_ value: String) -> Self {
        attribute("title", value, true)
    }
    
    /// Specifies whether the content of an element should be translated or not
    func translate(_ value: Translate) -> Self {
        attribute("translate", value.rawValue, true)
    }
}
