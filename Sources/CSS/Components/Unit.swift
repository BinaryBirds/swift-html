extension Double {

    /// converts a double value into an integer if it has no fraction digits, otherwise it uses the double value
    fileprivate var asIntOrDouble: String {
        if truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(self))
        }
        return String(self)
    }
}

public enum Unit: Sendable {
    case zero

    /// centimeters
    case cm(Double)
    /// millimeters
    case mm(Double)
    /// inches (1in = 96px = 2.54cm)
    case `in`(Double)
    /// pixels (1px = 1/96th of 1in)
    case px(Double)
    /// points (1pt = 1/72 of 1in)
    case pt(Double)
    /// picas (1pc = 12 pt)
    case pc(Double)

    /// Relative to the font-size of the element (2em means 2 times the size of the current font)
    case em(Double)
    /// Relative to the x-height of the current font (rarely used)
    case ex(Double)
    /// Relative to the width of the "0" (zero)
    case ch(Double)
    /// Relative to font-size of the root element
    case rem(Double)
    /// Relative to 1% of the width of the viewport*
    case vw(Double)
    /// Relative to 1% of the height of the viewport*
    case vh(Double)
    /// Relative to 1% of viewport's* smaller dimension
    case vmin(Double)
    /// Relative to 1% of viewport's* larger dimension
    case vmax(Double)
    /// Relative to the parent element
    case percent(Double)

    var rawValue: String {
        switch self {
        case .zero:
            return "0"
        case .cm(let value):
            return "\(value.asIntOrDouble)cm"
        case .mm(let value):
            return "\(value.asIntOrDouble)mm"
        case .in(let value):
            return "\(value.asIntOrDouble)in"
        case .px(let value):
            return "\(value.asIntOrDouble)px"
        case .pt(let value):
            return "\(value.asIntOrDouble)pt"
        case .pc(let value):
            return "\(value.asIntOrDouble)pc"
        case .em(let value):
            return "\(value.asIntOrDouble)em"
        case .ex(let value):
            return "\(value.asIntOrDouble)ex"
        case .ch(let value):
            return "\(value.asIntOrDouble)ch"
        case .rem(let value):
            return "\(value.asIntOrDouble)rem"
        case .vw(let value):
            return "\(value.asIntOrDouble)vw"
        case .vh(let value):
            return "\(value.asIntOrDouble)vh"
        case .vmin(let value):
            return "\(value.asIntOrDouble)vmin"
        case .vmax(let value):
            return "\(value.asIntOrDouble)vmax"
        case .percent(let value):
            return "\(value.asIntOrDouble)%"
        }
    }
}

extension Int {
    public var cm: Unit { Unit.cm(Double(self)) }
    public var mm: Unit { Unit.mm(Double(self)) }
    public var `in`: Unit { Unit.in(Double(self)) }
    public var px: Unit { Unit.px(Double(self)) }
    public var pt: Unit { Unit.pt(Double(self)) }
    public var pc: Unit { Unit.pc(Double(self)) }
    public var em: Unit { Unit.em(Double(self)) }
    public var ex: Unit { Unit.ex(Double(self)) }
    public var ch: Unit { Unit.ch(Double(self)) }
    public var rem: Unit { Unit.rem(Double(self)) }
    public var vw: Unit { Unit.vw(Double(self)) }
    public var vh: Unit { Unit.vh(Double(self)) }
    public var vmin: Unit { Unit.vmin(Double(self)) }
    public var vmax: Unit { Unit.vmax(Double(self)) }
    public var percent: Unit { Unit.percent(Double(self)) }
}

extension Double {
    public var cm: Unit { Unit.cm(self) }
    public var mm: Unit { Unit.mm(self) }
    public var `in`: Unit { Unit.in(self) }
    public var px: Unit { Unit.px(self) }
    public var pt: Unit { Unit.pt(self) }
    public var pc: Unit { Unit.pc(self) }
    public var em: Unit { Unit.em(self) }
    public var ex: Unit { Unit.ex(self) }
    public var ch: Unit { Unit.ch(self) }
    public var rem: Unit { Unit.rem(self) }
    public var vw: Unit { Unit.vw(self) }
    public var vh: Unit { Unit.vh(self) }
    public var vmin: Unit { Unit.vmin(self) }
    public var vmax: Unit { Unit.vmax(self) }
    public var percent: Unit { Unit.percent(self) }
}
