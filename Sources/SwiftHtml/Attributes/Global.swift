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
        node.upsert(Attribute(key: "accesskey", value: String(value)))
        return self
    }

    /// Specifies one classname for an element (refers to a class in a style sheet)
    func `class`(_ value: String?, _ condition: Bool = true) -> Self {
        if let value = value, condition {
            node.upsert(Attribute(key: "class", value: value))
        }
        return self
    }

    /// Specifies multiple classnames for an element (refers to a class in a style sheet)
    func `class`(_ value: [String]) -> Self {
        node.upsert(Attribute(key: "class", value: value.joined(separator: " ")))
        return self
    }
    
    /// Specifies whether the content of an element is editable or not
    func contenteditable(_ value: Bool) -> Self {
        node.upsert(Attribute(key: "contenteditable", value: String(value)))
        return self
    }
    
    /// Used to store custom data private to the page or application
    func data(key: String, _ value: String) -> Self {
        node.upsert(Attribute(key: "data-" + key, value: value))
        return self
    }

    /// Specifies the text direction for the content in an element
    func dir(_ value: TextDirection = .ltr) -> Self {
        node.upsert(Attribute(key: "dir", value: value.rawValue))
        return self
    }
    
    /// Specifies whether an element is draggable or not
    func draggable(_ value: Draggable = .auto) -> Self {
        node.upsert(Attribute(key: "draggable", value: value.rawValue))
        return self
    }
    
    /// Specifies that an element is not yet, or is no longer, relevant
    func hidden(_ value: Bool? = nil) -> Self {
        node.upsert(Attribute(key: "hidden", value: value?.description))
        return self
    }
    
    /// Specifies a unique id for an element
    func `id`(_ value: String) -> Self {
        node.upsert(Attribute(key: "id", value: value))
        return self
    }
    
    /// Specifies the language of the element's content
    func lang(_ value: String) -> Self {
        node.upsert(Attribute(key: "lang", value: value))
        return self
    }
    
    /// Specifies whether the element is to have its spelling and grammar checked or not
    func spellcheck(_ value: Bool) -> Self {
        node.upsert(Attribute(key: "spellcheck", value: String(value)))
        return self
    }
    
    /// Specifies an inline CSS style for an element
    func style(_ value: String) -> Self {
        node.upsert(Attribute(key: "style", value: value))
        return self
    }
    
    /// Specifies the tabbing order of an element
    func tabindex(_ value: Int) -> Self {
        node.upsert(Attribute(key: "tabindex", value: String(value)))
        return self
    }
    
    /// Specifies extra information about an element
    func title(_ value: String) -> Self {
        node.upsert(Attribute(key: "title", value: value))
        return self
    }
    
    /// Specifies whether the content of an element should be translated or not
    func translate(_ value: Translate) -> Self {
        node.upsert(Attribute(key: "translate", value: value.rawValue))
        return self
    }
}
