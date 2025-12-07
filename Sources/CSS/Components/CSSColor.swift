public struct CSSColor: Sendable, ExpressibleByStringLiteral {

    private var colorValue: String

    init(raw: String) {
        colorValue = raw
    }

    //    init(hex: String) {
    //        css = hex
    //    }

    public init(stringLiteral value: StringLiteralType) {
        colorValue = value
        /// check if length is valid (000, #000, cafe00, #cafe00)
        assert([3, 4, 6, 7].contains(value.count), "Invalid hex string")

        /// add # prefix if missing
        if !colorValue.hasPrefix("#") {
            colorValue = "#" + colorValue
        }
    }

    public init(r: Int, g: Int, b: Int, a: Double? = nil) {
        colorValue = "\(r),\(g),\(b)"
        if let a = a {
            colorValue = "rgba(" + colorValue + ", \(a))"
        }
        else {
            colorValue = "rgb(" + colorValue + ")"
        }
    }

    public init(r: Double, g: Double, b: Double, a: Double? = nil) {
        colorValue = "\(r)%,\(g)%,\(b)%"
        if let a = a {
            colorValue = "rgba(" + colorValue + ", \(a))"
        }
        else {
            colorValue = "rgb(" + colorValue + ")"
        }
    }

    public init(h: Int, s: Int, l: Int, a: Double? = nil) {
        colorValue = "\(h),\(s),\(l)"
        if let a = a {
            colorValue = "hsla(" + colorValue + ", \(a))"
        }
        else {
            colorValue = "hsl(" + colorValue + ")"
        }
    }

    public init(h: Double, s: Double, l: Double, a: Double? = nil) {
        colorValue = "\(h)%,\(s)%,\(l)%"
        if let a = a {
            colorValue = "hsla(" + colorValue + ", \(a))"
        }
        else {
            colorValue = "hsl(" + colorValue + ")"
        }
    }

    var rawValue: String {
        colorValue
    }
}
