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



public extension Tag {
        
    /// Specifies a shortcut key to activate/focus an element
    func accesskey(_ value: Character) -> Self {
        attribute("accesskey", String(value))
    }

    /// Specifies one classname for an element (refers to a class in a style sheet)
    func `class`(_ value: String?, _ condition: Bool = true) -> Self {
        let values = value?.split(separator: " ").map { String($0) } ?? []
        let existing = node.attributes.first { $0.key == "class" }?.value?.split(separator: " ").map { String($0) } ?? []
        let newValues = existing + values
        
        var newValue: String? = nil
        if !newValues.isEmpty {
            newValue = newValues.joined(separator: " ")
        }
        return attribute("class", newValue, condition)
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    func `class`(_ values: [String], _ condition: Bool = true) -> Self {
        /// @NOTE: explicit true flag is needed, otherwise Swift won't know which function to call...
        `class`(values.joined(separator: " "), condition)
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    func `class`(_ values: String...) -> Self {
        `class`(values)
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
        attribute("style", value)
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
