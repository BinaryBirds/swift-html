import SGML

enum AriaAttributeKey: String, AttributeKeyRepresentable {
    case activeDescendant = "activedescendant"
    case atomic
    case autoComplete = "autocomplete"
    case busy
    case checked
    case colCount = "colcount"
    case colIndex = "colindex"
    case colSpan = "colspan"
    case controls
    case current
    case describedBy = "describedby"
    case details
    case disabled
    case errorMessage = "errormessage"
    case expanded
    case flowTo = "flowto"
    case hasPopup = "haspopup"
    case hidden
    case invalid
    case keyShortcuts = "keyshortcuts"
    case label
    case labeledBy = "labeledby"
    case level
    case live
    case modal
    case multiLine = "multiline"
    case multiSelectable = "multiselectable"
    case orientation
    case owns
    case placeholder
    case posInSet = "posinset"
    case pressed
    case readOnly = "readonly"
    case relevant
    case required
    case roleDescription = "roledescription"
    case rowCount = "rowcount"
    case rowIndex = "rowindex"
    case rowSpan = "rowspan"
    case selected
    case setSize = "setsize"
    case sort
    case valueMax = "valuemax"
    case valueMin = "valuemin"
    case valueNow = "valuenow"
    case valueText = "valuetext"
}

extension AriaAttributeKey {
    var attributeKey: String { "aria-" + rawValue }
}
