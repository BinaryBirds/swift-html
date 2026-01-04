import SGML

public protocol SelectedAttributeModifier {

}

extension SelectedAttributeModifier where Self: Attributes & Mutable {

    public func selected() -> Self {
        setAttribute(
            key: StandardAttributeKey.selected
        )
    }
}
