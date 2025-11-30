// https://html.spec.whatwg.org/multipage/dom.html#global-attributes
public protocol GlobalAttributeModifier:
    IdAttributeModifier,
    ClassAttributeModifier,
    StyleAttributeModifier,
    TitleAttributeModifier,
    DirAttributeModifier
{

}

public protocol HTMLAttribute: Attribute {

}

extension HTMLAttribute {

    public static var name: String {
        String(String(describing: self).lowercased().dropLast(9))
    }
}

// ✅ id
// slot
// ✅ class
// accesskey
// autocapitalize
// autocorrect
// autofocus
// contenteditable
// ✅ dir
// draggable
// enterkeyhint
// headingoffset
// headingreset
// hidden
// inert
// inputmode
// is
// itemid
// itemprop
// itemref
// itemscope
// itemtype
// lang
// nonce
// popover
// spellcheck
// ✅ style
// tabindex
// ✅ title
// translate
// writingsuggestions
