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
}

private extension Array where Element == String {
    
    var classString: String {
        filter { !$0.isEmpty }.joined(separator: " ")
    }
}

public extension Tag {
        
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
    
    /// Inserts a single value to the class list if the condition is true
    ///
    /// Note: If the value is empty or nil it won't be inserted to the list
    ///
    func `class`(insert value: String?, _ condition: Bool = true) -> Self {
        guard let value = value else {
            return self
        }
        return `class`(insert: [value], condition)
    }
    
    /// Inserts a variadic array of optional values to the class list if the condition is true
    ///
    /// Note: nil or empty values will not be inserted into the list
    ///
    func `class`(insert values: String?..., if condition: Bool = true) -> Self {
        let values = values.compactMap{ $0 }
        return `class`(insert: values, condition)
    }
    
     /// Inserts an array of values to the class list if the condition is true
    ///
    /// Note: If the value is empty it won't be inserted into the list
    ///
    func `class`(insert values: [String]?, _ condition: Bool = true) -> Self {
        guard condition, let values = values?.filter({!$0.isEmpty}), !values.isEmpty else {
            return self
        }
        
        var classes = Set(classArray)
        _ = values.map{ classes.insert($0) }
        let newValues = Array(classes)

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
        guard condition else { return self }
        let newClasses = classArray.filter { !values.contains($0) }
        if newClasses.isEmpty {
            return deleteAttribute("class")
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
        return `class`(insert: value, condition)
    }
    
    // MARK: - other global attributes
    
    /// Specifies a shortcut key to activate/focus an element
    func accesskey(_ value: Character) -> Self {
        attribute("accesskey", String(value))
    }
    
    /// Specifies whether the content of an element is editable or not
    func contenteditable(_ value: Bool) -> Self {
        attribute("contenteditable", String(value))
    }
    
    /// Used to store custom data private to the page or application
    func data(key: String, _ value: String) -> Self {
        attribute("data-" + key, value)
    }

    /// Specifies the text direction for the content in an element
    func dir(_ value: TextDirection = .ltr) -> Self {
        attribute("dir", value.rawValue)
    }
    
    /// Specifies whether an element is draggable or not
    func draggable(_ value: Draggable = .auto) -> Self {
        attribute("draggable", value.rawValue)
    }
    
    /// Specifies that an element is not yet, or is no longer, relevant
    func hidden(_ value: Bool? = nil) -> Self {
        attribute("hidden", value?.description)
    }
    
    /// Specifies a unique id for an element
    func `id`(_ value: String) -> Self {
        attribute("id", value)
    }
    
    /// Specifies the language of the element's content
    func lang(_ value: String) -> Self {
        attribute("lang", value)
    }
    
    /// Specifies whether the element is to have its spelling and grammar checked or not
    func spellcheck(_ value: Bool) -> Self {
        attribute("spellcheck", String(value))
    }
    
    /// Specifies an inline CSS style for an element
    func style(_ value: String) -> Self {
        guard !value.isEmpty else { return self }
        return attribute("style", value)
    }
    
    /// Specifies the tabbing order of an element
    func tabindex(_ value: Int) -> Self {
        attribute("tabindex", String(value))
    }
    
    /// Specifies extra information about an element
    func title(_ value: String) -> Self {
        attribute("title", value)
    }
    
    /// Specifies whether the content of an element should be translated or not
    func translate(_ value: Translate) -> Self {
        attribute("translate", value.rawValue)
    }
}
