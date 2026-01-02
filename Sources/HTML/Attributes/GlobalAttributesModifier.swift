import SGML

// https://html.spec.whatwg.org/multipage/dom.html#global-attributes
// https://www.w3schools.com/tags/ref_standardattributes.asp
public protocol GlobalAttributesModifier:
    EventAttributesModifier,
    AccessKeyAttributeModifier,
    AutoCapitalizeAttributeModifier,
    AutoCorrectAttributeModifier,
    IdAttributeModifier,
    ClassAttributeModifier,
    ContentEditableAttributeModifier,
    DirAttributeModifier,
    DraggableAttributeModifier,
    EnterKeyHintAttributeModifier,
    HeadingOffsetAttributeModifier,
    HeadingResetAttributeModifier,
    HiddenAttributeModifier,
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
    RoleAttributeModifier,
    PopoverAttributeModifier,
    SlotAttributeModifier,
    SpellCheckAttributeModifier,
    StyleAttributeModifier,
    TabIndexAttributeModifier,
    TitleAttributeModifier,
    DirAttributeModifier,
    TranslateAttributeModifier,
    AutoFocusAttributeModifier,
    WritingSuggestionsAttributeModifier
{

}
