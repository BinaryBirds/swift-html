import SGML

public enum SandboxAttributeValue: String, AttributeValueRepresentable {
    /// (no value) Applies all restrictions.
    case all = ""
    /// Allows form submission.
    case allowForms = "allow-forms"
    /// Allows to open modal windows.
    case allowModals = "allow-modals"
    /// Allows to lock the screen orientation.
    case allowOrientationLock = "allow-orientation-lock"
    /// Allows to use the Pointer Lock API.
    case allowPointerLock = "allow-pointer-lock"
    /// Allows popups.
    case allowPopups = "allow-popups"
    /// Allows popups to open new windows without inheriting the sandboxing.
    case allowPopupsToEscapeSandbox = "allow-popups-to-escape-sandbox"
    /// Allows to start a presentation session.
    case allowPresentation = "allow-presentation"
    /// Allows the iframe content to be treated as being from the same origin.
    case allowSameOrigin = "allow-same-origin"
    /// Allows to run scripts.
    case allowScripts = "allow-scripts"
    /// Allows the iframe content to navigate its top-level browsing context.
    case allowTopNavigation = "allow-top-navigation"
    /// Allows the iframe content to navigate its top-level browsing context, but only if initiated by user.
    case allowTopNavigationByUserActivation =
        "allow-top-navigation-by-user-activation"
}

public protocol SandboxAttributeModifier {
    associatedtype SandboxAttributeValueType: AttributeValueRepresentable =
        SandboxAttributeValue
}

extension SandboxAttributeModifier where Self: Attributes & Mutable {

    public func sandbox(
        _ value: SandboxAttributeValueType?
    ) -> Self {
        let rawValue = value?.attributeValue
        let attributeValue = rawValue == "" ? nil : rawValue
        return setAttribute(
            key: StandardAttributeKey.sandbox,
            value: attributeValue
        )
    }
}
