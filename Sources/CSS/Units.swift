public protocol UnitRepresentable: Sendable {
    var rawValue: String { get }
}

public struct Unit<T: Numeric & Sendable>: UnitRepresentable {

    public enum UnitType: String, Sendable {
        case cm
        case mm
        case `in`
        case px
        case pt
        case pc
        case em
        case ex
        case ch
        case rem
        case vw
        case vh
        case vmin
        case vmax
        case percent = "%"
    }

    public var value: T
    public var type: UnitType

    public init(
        value: T,
        type: UnitType
    ) {
        self.value = value
        self.type = type
    }

    public var rawValue: String {
        "\(value)\(type.rawValue)"
    }
}

extension Numeric where Self: Sendable {
    public var cm: Unit<Self> { .init(value: self, type: .cm) }
    public var mm: Unit<Self> { .init(value: self, type: .mm) }
    public var `in`: Unit<Self> { .init(value: self, type: .in) }
    public var px: Unit<Self> { .init(value: self, type: .px) }
    public var pt: Unit<Self> { .init(value: self, type: .pt) }
    public var pc: Unit<Self> { .init(value: self, type: .pc) }
    public var em: Unit<Self> { .init(value: self, type: .em) }
    public var ex: Unit<Self> { .init(value: self, type: .ex) }
    public var ch: Unit<Self> { .init(value: self, type: .ch) }
    public var rem: Unit<Self> { .init(value: self, type: .rem) }
    public var vw: Unit<Self> { .init(value: self, type: .vw) }
    public var vh: Unit<Self> { .init(value: self, type: .vh) }
    public var vmin: Unit<Self> { .init(value: self, type: .vmin) }
    public var vmax: Unit<Self> { .init(value: self, type: .vmax) }
    public var percent: Unit<Self> { .init(value: self, type: .percent) }
}

extension Int: UnitRepresentable {

    public var rawValue: String { String(self) }
}

extension Double: UnitRepresentable {

    public var rawValue: String { String(self) }
}
