/// https://www.w3schools.com/cssref/css_selectors.asp
public enum Pseudo: Sendable {
    case active
    case after
    case before
    case checked
    case `default`
    case disabled
    case empty
    case firstChild
    case firstLetter
    case firstLine
    case firstOfType
    case focus
    case fullscreen
    case hover
    case inRange
    case indeterminate
    case invalid
    case lang(String)
    case lastChild
    case lastOfType
    case link
    case marker
    case not(String)
    case nthChild(Int)
    case nthLastChild(Int)
    case nthLastOfType(Int)
    case nthOfType(Int)
    case onlyOfType
    case onlyChild
    case optional
    case outOfRange
    case placeholder
    case readOnly
    case readWrite
    case required
    case selection
    case target
    case valid
    case visited

    var value: String {
        switch self {
        case .active:
            return ":active"
        case .after:
            return "::after"
        case .before:
            return "::before"
        case .checked:
            return ":checked"
        case .`default`:
            return ":default"
        case .disabled:
            return ":disabled"
        case .empty:
            return ":empty"
        case .firstChild:
            return ":first-child"
        case .firstLetter:
            return "::first-letter"
        case .firstLine:
            return "::first-line"
        case .firstOfType:
            return ":first-of-type"
        case .focus:
            return ":focus"
        case .fullscreen:
            return ":fullscreen"
        case .hover:
            return ":hover"
        case .inRange:
            return ":in-range"
        case .indeterminate:
            return ":indeterminate"
        case .invalid:
            return ":invalid"
        case .lang(let value):
            return ":lang(\(value)"
        case .lastChild:
            return ":last-child"
        case .lastOfType:
            return ":last-of-type"
        case .link:
            return ":link"
        case .marker:
            return "::marker"
        case .not(let value):
            return ":not(\(value))"
        case .nthChild(let value):
            return ":nth-child(\(value))"
        case .nthLastChild(let value):
            return ":nth-last-child(\(value))"
        case .nthLastOfType(let value):
            return ":nth-last-of-type(\(value))"
        case .nthOfType(let value):
            return ":nth-of-type(\(value))"
        case .onlyOfType:
            return ":only-of-type"
        case .onlyChild:
            return ":only-child"
        case .`optional`:
            return ":optional"
        case .outOfRange:
            return ":out-of-range"
        case .placeholder:
            return ":placeholder"
        case .readOnly:
            return ":read-only"
        case .readWrite:
            return ":read-write"
        case .`required`:
            return ":required"
        case .selection:
            return "::selection"
        case .target:
            return ":target"
        case .valid:
            return ":valid"
        case .visited:
            return ":visited"
        }
    }
}
