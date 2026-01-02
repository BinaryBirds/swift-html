import SGML

public protocol OpenAttributeModifier {

}

extension OpenAttributeModifier where Self: Attributes & Mutable {

    public func open() -> Self {
        setAttribute(key: .`open`)
    }
}
