import SGML

// https://html.spec.whatwg.org/multipage/dom.html#global-attributes
// https://www.w3schools.com/tags/ref_standardattributes.asp
public protocol GlobalAttributesModifier:
    AccessKeyAttributeModifier,
    AutoCapitalizeAttributeModifier,
    AutoCorrectAttributeModifier,
    AutoFocusAttributeModifier,
    ClassAttributeModifier,
    ContentEditableAttributeModifier,
    DirAttributeModifier,
    DraggableAttributeModifier,
    EnterKeyHintAttributeModifier,
    HeadingOffsetAttributeModifier,
    HeadingResetAttributeModifier,
    HiddenAttributeModifier,
    IdAttributeModifier,
    InertAttributeModifier,
    InputModeAttributeModifier,
    IsAttributeModifier,
    ItemIdAttributeModifier,
    ItemPropAttributeModifier,
    ItemRefAttributeModifier,
    ItemScopeAttributeModifier,
    ItemTypeAttributeModifier,
    LangAttributeModifier,
    NonceAttributeModifier,
    PopoverAttributeModifier,
    RoleAttributeModifier,
    SlotAttributeModifier,
    SpellCheckAttributeModifier,
    StyleAttributeModifier,
    TabIndexAttributeModifier,
    TitleAttributeModifier,
    TranslateAttributeModifier,
    WritingSuggestionsAttributeModifier,
    // events
    EventAttributesModifier,
    // aria
    AriaAttributesModifier
{

}
