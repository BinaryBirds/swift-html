import SGML

public protocol NoModuleAttributeModifier {

}

extension NoModuleAttributeModifier where Self: Attributes & Mutable {

    public func noModule() -> Self {
        setAttribute(key: StandardAttributeKey.nomodule)
    }
}
