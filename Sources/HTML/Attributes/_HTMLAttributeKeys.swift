import SGML

enum AttributeKeys: String {
    case width
    case type
    case height
}

extension Attributes where Self: Mutable {
    
    func setAttribute(
        key: AttributeKeys,
        value: String?
    ) -> Self {
        setAttribute(name: key.rawValue, value: value)
    }
    
    func getAttribute(
        key: AttributeKeys
    ) -> String? {
        getAttribute(name: key.rawValue)//.flatMap { Int($0) }
    }

    func setAttribute(
        key: AttributeKeys,
        value: Int?
    ) -> Self {
        setAttribute(name: key.rawValue, value: value.map(String.init))
    }
    
    func getAttribute(
        key: AttributeKeys
    ) -> Int? {
        getAttribute(name: key.rawValue).flatMap { Int($0) }
    }
}
