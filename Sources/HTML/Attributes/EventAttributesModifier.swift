import SGML

public protocol WindowEventAttributesModifier:
    OnAfterPrintAttributeModifier,
    OnBeforePrintAttributeModifier,
    OnBeforeUnloadAttributeModifier,
    OnHashChangeAttributeModifier,
    OnLanguageChangeAttributeModifier,
    OnMessageAttributeModifier,
    OnMessageErrorAttributeModifier,
    OnOfflineAttributeModifier,
    OnOnlineAttributeModifier,
    OnPageSwapAttributeModifier,
    OnPageHideAttributeModifier,
    OnPageRevealAttributeModifier,
    OnPageShowAttributeModifier,
    OnPopStateAttributeModifier,
    OnRejectionHandledAttributeModifier,
    OnStorageAttributeModifier,
    OnUnhandledRejectionAttributeModifier,
    OnUnloadAttributeModifier,
    OnErrorAttributeModifier,
    OnLoadAttributeModifier,
    OnResizeAttributeModifier
{

}

public protocol FocusEventAttributesModifier:
    OnBlurAttributeModifier,
    OnFocusAttributeModifier
{

}

public protocol PointerEventAttributesModifier:
    OnPointerCancelAttributeModifier,
    OnPointerDownAttributeModifier,
    OnPointerEnterAttributeModifier,
    OnPointerLeaveAttributeModifier,
    OnPointerMoveAttributeModifier,
    OnPointerOutAttributeModifier,
    OnPointerOverAttributeModifier,
    OnPointerUpAttributeModifier,
    OnGotPointerCaptureAttributeModifier,
    OnLostPointerCaptureAttributeModifier
{

}

public protocol MouseEventAttributesModifier:
    OnClickAttributeModifier,
    OnContextMenuAttributeModifier,
    OnDblClickAttributeModifier,
    OnMouseDownAttributeModifier,
    OnMouseEnterAttributeModifier,
    OnMouseLeaveAttributeModifier,
    OnMouseMoveAttributeModifier,
    OnMouseOutAttributeModifier,
    OnMouseOverAttributeModifier,
    OnMouseUpAttributeModifier
{

}

public protocol WheelEventAttributesModifier:
    OnWheelAttributeModifier
{

}

public protocol InputEventAttributesModifier:
    OnBeforeInputAttributeModifier,
    OnInputAttributeModifier,
    OnSelectAttributeModifier,
    OnSearchAttributeModifier,
    OnChangeAttributeModifier
{

}

public protocol KeyboardEventAttributesModifier:
    OnKeyDownAttributeModifier,
    OnKeyPressAttributeModifier,
    OnKeyUpAttributeModifier
{

}

public protocol DragEventAttributesModifier:
    OnDragAttributeModifier,
    OnDragEndAttributeModifier,
    OnDragEnterAttributeModifier,
    OnDragLeaveAttributeModifier,
    OnDragOverAttributeModifier,
    OnDragStartAttributeModifier,
    OnDropAttributeModifier
{

}

public protocol ClipboardEventAttributesModifier:
    OnCopyAttributeModifier,
    OnCutAttributeModifier,
    OnPasteAttributeModifier
{

}

public protocol SelectionEventAttributesModifier:
    OnSelectionChangeAttributeModifier,
    OnSelectStartAttributeModifier
{

}

public protocol MediaEventAttributesModifier:
    OnAbortAttributeModifier,
    OnCanPlayAttributeModifier,
    OnCanPlayThroughAttributeModifier,
    OnDurationChangeAttributeModifier,
    OnEmptiedAttributeModifier,
    OnEndedAttributeModifier,
    OnLoadedDataAttributeModifier,
    OnLoadedMetadataAttributeModifier,
    OnLoadStartAttributeModifier,
    OnPauseAttributeModifier,
    OnPlayAttributeModifier,
    OnPlayingAttributeModifier,
    OnProgressAttributeModifier,
    OnRateChangeAttributeModifier,
    OnSeekedAttributeModifier,
    OnSeekingAttributeModifier,
    OnStalledAttributeModifier,
    OnSuspendAttributeModifier,
    OnTimeUpdateAttributeModifier,
    OnVolumeChangeAttributeModifier,
    OnWaitingAttributeModifier
{

}

public protocol FormEventAttributesModifier:
    OnInvalidAttributeModifier,
    OnResetAttributeModifier,
    OnSubmitAttributeModifier
{

}

public protocol DetailEventAttributesModifier:
    OnToggleAttributeModifier
{

}

public protocol EventAttributesModifier:
    WindowEventAttributesModifier,
    FocusEventAttributesModifier,
    PointerEventAttributesModifier,
    MouseEventAttributesModifier,
    WheelEventAttributesModifier,
    InputEventAttributesModifier,
    KeyboardEventAttributesModifier,
    DragEventAttributesModifier,
    ClipboardEventAttributesModifier,
    SelectionEventAttributesModifier,
    MediaEventAttributesModifier,
    FormEventAttributesModifier,
    DetailEventAttributesModifier,
    // TODO: double check
    OnScrollAttributeModifier,
    OnCueChangeAttributeModifier
{

}
