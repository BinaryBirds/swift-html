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

extension CSSColor {
    /// Hex color `F0F8FF`.
    public static let aliceBlue: Self = .init(raw: "aliceblue")
    /// Hex color `FAEBD7`.
    public static let antiqueWhite: Self = .init(raw: "antiquewhite")
    /// Hex color `00FFFF`.
    public static let aqua: Self = .init(raw: "aqua")
    /// Hex color `7FFFD4`.
    public static let aquamarine: Self = .init(raw: "aquamarine")
    /// Hex color `F0FFFF`.
    public static let azure: Self = .init(raw: "azure")
    /// Hex color `F5F5DC`.
    public static let beige: Self = .init(raw: "beige")
    /// Hex color `FFE4C4`.
    public static let bisque: Self = .init(raw: "bisque")
    /// Hex color `000000`.
    public static let black: Self = .init(raw: "black")
    /// Hex color `FFEBCD`.
    public static let blanchedAlmond: Self = .init(raw: "blanchedalmond")
    /// Hex color `0000FF`.
    public static let blue: Self = .init(raw: "blue")
    /// Hex color `8A2BE2`.
    public static let blueViolet: Self = .init(raw: "blueviolet")
    /// Hex color `A52A2A`.
    public static let brown: Self = .init(raw: "brown")
    /// Hex color `DEB887`.
    public static let burlyWood: Self = .init(raw: "burlywood")
    /// Hex color `5F9EA0`.
    public static let cadetBlue: Self = .init(raw: "cadetblue")
    /// Hex color `7FFF00`.
    public static let chartreuse: Self = .init(raw: "chartreuse")
    /// Hex color `D2691E`.
    public static let chocolate: Self = .init(raw: "chocolate")
    /// Hex color `FF7F50`.
    public static let coral: Self = .init(raw: "coral")
    /// Hex color `6495ED`.
    public static let cornflowerBlue: Self = .init(raw: "cornflowerblue")
    /// Hex color `FFF8DC`.
    public static let cornsilk: Self = .init(raw: "cornsilk")
    /// Hex color `DC143C`.
    public static let crimson: Self = .init(raw: "crimson")
    /// Hex color `00FFFF`.
    public static let cyan: Self = .init(raw: "cyan")
    /// Hex color `00008B`.
    public static let darkBlue: Self = .init(raw: "darkblue")
    /// Hex color `008B8B`.
    public static let darkCyan: Self = .init(raw: "darkcyan")
    /// Hex color `B8860B`.
    public static let darkGoldenRod: Self = .init(raw: "darkgoldenrod")
    /// Hex color `A9A9A9`.
    public static let darkGray: Self = .init(raw: "darkgray")
    /// Hex color `A9A9A9`.
    public static let darkGrey: Self = .init(raw: "darkgrey")
    /// Hex color `006400`.
    public static let darkGreen: Self = .init(raw: "darkgreen")
    /// Hex color `BDB76B`.
    public static let darkKhaki: Self = .init(raw: "darkkhaki")
    /// Hex color `8B008B`.
    public static let darkMagenta: Self = .init(raw: "darkmagenta")
    /// Hex color `556B2F`.
    public static let darkOliveGreen: Self = .init(raw: "darkolivegreen")
    /// Hex color `FF8C00`.
    public static let darkOrange: Self = .init(raw: "darkorange")
    /// Hex color `9932CC`.
    public static let darkOrchid: Self = .init(raw: "darkorchid")
    /// Hex color `8B0000`.
    public static let darkRed: Self = .init(raw: "darkred")
    /// Hex color `E9967A`.
    public static let darkSalmon: Self = .init(raw: "darksalmon")
    /// Hex color `8FBC8F`.
    public static let darkSeaGreen: Self = .init(raw: "darkseagreen")
    /// Hex color `483D8B`.
    public static let darkSlateBlue: Self = .init(raw: "darkslateblue")
    /// Hex color `2F4F4F`.
    public static let darkSlateGray: Self = .init(raw: "darkslategray")
    /// Hex color `2F4F4F`.
    public static let darkSlateGrey: Self = .init(raw: "darkslategrey")
    /// Hex color `00CED1`.
    public static let darkTurquoise: Self = .init(raw: "darkturquoise")
    /// Hex color `9400D3`.
    public static let darkViolet: Self = .init(raw: "darkviolet")
    /// Hex color `FF1493`.
    public static let deepPink: Self = .init(raw: "deeppink")
    /// Hex color `00BFFF`.
    public static let deepSkyBlue: Self = .init(raw: "deepskyblue")
    /// Hex color `696969`.
    public static let dimGray: Self = .init(raw: "dimgray")
    /// Hex color `696969`.
    public static let dimGrey: Self = .init(raw: "dimgrey")
    /// Hex color `1E90FF`.
    public static let dodgerBlue: Self = .init(raw: "dodgerblue")
    /// Hex color `B22222`.
    public static let fireBrick: Self = .init(raw: "firebrick")
    /// Hex color `FFFAF0`.
    public static let floralWhite: Self = .init(raw: "floralwhite")
    /// Hex color `228B22`.
    public static let forestGreen: Self = .init(raw: "forestgreen")
    /// Hex color `FF00FF`.
    public static let fuchsia: Self = .init(raw: "fuchsia")
    /// Hex color `DCDCDC`.
    public static let gainsboro: Self = .init(raw: "gainsboro")
    /// Hex color `F8F8FF`.
    public static let ghostWhite: Self = .init(raw: "ghostwhite")
    /// Hex color `FFD700`.
    public static let gold: Self = .init(raw: "gold")
    /// Hex color `DAA520`.
    public static let goldenRod: Self = .init(raw: "goldenrod")
    /// Hex color `808080`.
    public static let gray: Self = .init(raw: "gray")
    /// Hex color `808080`.
    public static let grey: Self = .init(raw: "grey")
    /// Hex color `008000`.
    public static let green: Self = .init(raw: "green")
    /// Hex color `ADFF2F`.
    public static let greenYellow: Self = .init(raw: "greenyellow")
    /// Hex color `F0FFF0`.
    public static let honeyDew: Self = .init(raw: "honeydew")
    /// Hex color `FF69B4`.
    public static let hotPink: Self = .init(raw: "hotpink")
    /// Hex color `CD5C5C`.
    public static let indianRed: Self = .init(raw: "indianred")
    /// Hex color `4B0082`.
    public static let indigo: Self = .init(raw: "indigo")
    /// Hex color `FFFFF0`.
    public static let ivory: Self = .init(raw: "ivory")
    /// Hex color `F0E68C`.
    public static let khaki: Self = .init(raw: "khaki")
    /// Hex color `E6E6FA`.
    public static let lavender: Self = .init(raw: "lavender")
    /// Hex color `FFF0F5`.
    public static let lavenderBlush: Self = .init(raw: "lavenderblush")
    /// Hex color `7CFC00`.
    public static let lawnGreen: Self = .init(raw: "lawngreen")
    /// Hex color `FFFACD`.
    public static let lemonChiffon: Self = .init(raw: "lemonchiffon")
    /// Hex color `ADD8E6`.
    public static let lightBlue: Self = .init(raw: "lightblue")
    /// Hex color `F08080`.
    public static let lightCoral: Self = .init(raw: "lightcoral")
    /// Hex color `E0FFFF`.
    public static let lightCyan: Self = .init(raw: "lightcyan")
    /// Hex color `FAFAD2`.
    public static let lightGoldenRodYellow: Self = .init(
        raw: "lightgoldenrodyellow"
    )
    /// Hex color `D3D3D3`.
    public static let lightGray: Self = .init(raw: "lightgray")
    /// Hex color `D3D3D3`.
    public static let lightGrey: Self = .init(raw: "lightgrey")
    /// Hex color `90EE90`.
    public static let lightGreen: Self = .init(raw: "lightgreen")
    /// Hex color `FFB6C1`.
    public static let lightPink: Self = .init(raw: "lightpink")
    /// Hex color `FFA07A`.
    public static let lightSalmon: Self = .init(raw: "lightsalmon")
    /// Hex color `20B2AA`.
    public static let lightSeaGreen: Self = .init(raw: "lightseagreen")
    /// Hex color `87CEFA`.
    public static let lightSkyBlue: Self = .init(raw: "lightskyblue")
    /// Hex color `778899`.
    public static let lightSlateGray: Self = .init(raw: "lightslategray")
    /// Hex color `778899`.
    public static let lightSlateGrey: Self = .init(raw: "lightslategrey")
    /// Hex color `B0C4DE`.
    public static let lightSteelBlue: Self = .init(raw: "lightsteelblue")
    /// Hex color `FFFFE0`.
    public static let lightYellow: Self = .init(raw: "lightyellow")
    /// Hex color `00FF00`.
    public static let lime: Self = .init(raw: "lime")
    /// Hex color `32CD32`.
    public static let limeGreen: Self = .init(raw: "limegreen")
    /// Hex color `FAF0E6`.
    public static let linen: Self = .init(raw: "linen")
    /// Hex color `FF00FF`.
    public static let magenta: Self = .init(raw: "magenta")
    /// Hex color `800000`.
    public static let maroon: Self = .init(raw: "maroon")
    /// Hex color `66CDAA`.
    public static let mediumAquaMarine: Self = .init(raw: "mediumaquamarine")
    /// Hex color `0000CD`.
    public static let mediumBlue: Self = .init(raw: "mediumblue")
    /// Hex color `BA55D3`.
    public static let mediumOrchid: Self = .init(raw: "mediumorchid")
    /// Hex color `9370DB`.
    public static let mediumPurple: Self = .init(raw: "mediumpurple")
    /// Hex color `3CB371`.
    public static let mediumSeaGreen: Self = .init(raw: "mediumseagreen")
    /// Hex color `7B68EE`.
    public static let mediumSlateBlue: Self = .init(raw: "mediumslateblue")
    /// Hex color `00FA9A`.
    public static let mediumSpringGreen: Self = .init(raw: "mediumspringgreen")
    /// Hex color `48D1CC`.
    public static let mediumTurquoise: Self = .init(raw: "mediumturquoise")
    /// Hex color `C71585`.
    public static let mediumVioletRed: Self = .init(raw: "mediumvioletred")
    /// Hex color `191970`.
    public static let midnightBlue: Self = .init(raw: "midnightblue")
    /// Hex color `F5FFFA`.
    public static let mintCream: Self = .init(raw: "mintcream")
    /// Hex color `FFE4E1`.
    public static let mistyRose: Self = .init(raw: "mistyrose")
    /// Hex color `FFE4B5`.
    public static let moccasin: Self = .init(raw: "moccasin")
    /// Hex color `FFDEAD`.
    public static let navajoWhite: Self = .init(raw: "navajowhite")
    /// Hex color `000080`.
    public static let navy: Self = .init(raw: "navy")
    /// Hex color `FDF5E6`.
    public static let oldLace: Self = .init(raw: "oldlace")
    /// Hex color `808000`.
    public static let olive: Self = .init(raw: "olive")
    /// Hex color `6B8E23`.
    public static let oliveDrab: Self = .init(raw: "olivedrab")
    /// Hex color `FFA500`.
    public static let orange: Self = .init(raw: "orange")
    /// Hex color `FF4500`.
    public static let orangeRed: Self = .init(raw: "orangered")
    /// Hex color `DA70D6`.
    public static let orchid: Self = .init(raw: "orchid")
    /// Hex color `EEE8AA`.
    public static let paleGoldenRod: Self = .init(raw: "palegoldenrod")
    /// Hex color `98FB98`.
    public static let paleGreen: Self = .init(raw: "palegreen")
    /// Hex color `AFEEEE`.
    public static let paleTurquoise: Self = .init(raw: "paleturquoise")
    /// Hex color `DB7093`.
    public static let paleVioletRed: Self = .init(raw: "palevioletred")
    /// Hex color `FFEFD5`.
    public static let papayaWhip: Self = .init(raw: "papayawhip")
    /// Hex color `FFDAB9`.
    public static let peachPuff: Self = .init(raw: "peachpuff")
    /// Hex color `CD853F`.
    public static let peru: Self = .init(raw: "peru")
    /// Hex color `FFC0CB`.
    public static let pink: Self = .init(raw: "pink")
    /// Hex color `DDA0DD`.
    public static let plum: Self = .init(raw: "plum")
    /// Hex color `B0E0E6`.
    public static let powderBlue: Self = .init(raw: "powderblue")
    /// Hex color `800080`.
    public static let purple: Self = .init(raw: "purple")
    /// Hex color `663399`.
    public static let rebeccaPurple: Self = .init(raw: "rebeccapurple")
    /// Hex color `FF0000`.
    public static let red: Self = .init(raw: "red")
    /// Hex color `BC8F8F`.
    public static let rosyBrown: Self = .init(raw: "rosybrown")
    /// Hex color `4169E1`.
    public static let royalBlue: Self = .init(raw: "royalblue")
    /// Hex color `8B4513`.
    public static let saddleBrown: Self = .init(raw: "saddlebrown")
    /// Hex color `FA8072`.
    public static let salmon: Self = .init(raw: "salmon")
    /// Hex color `F4A460`.
    public static let sandyBrown: Self = .init(raw: "sandybrown")
    /// Hex color `2E8B57`.
    public static let seaGreen: Self = .init(raw: "seagreen")
    /// Hex color `FFF5EE`.
    public static let seaShell: Self = .init(raw: "seashell")
    /// Hex color `A0522D`.
    public static let sienna: Self = .init(raw: "sienna")
    /// Hex color `C0C0C0`.
    public static let silver: Self = .init(raw: "silver")
    /// Hex color `87CEEB`.
    public static let skyBlue: Self = .init(raw: "skyblue")
    /// Hex color `6A5ACD`.
    public static let slateBlue: Self = .init(raw: "slateblue")
    /// Hex color `708090`.
    public static let slateGray: Self = .init(raw: "slategray")
    /// Hex color `708090`.
    public static let slateGrey: Self = .init(raw: "slategrey")
    /// Hex color `FFFAFA`.
    public static let snow: Self = .init(raw: "snow")
    /// Hex color `00FF7F`.
    public static let springGreen: Self = .init(raw: "springgreen")
    /// Hex color `4682B4`.
    public static let steelBlue: Self = .init(raw: "steelblue")
    /// Hex color `D2B48C`.
    public static let tan: Self = .init(raw: "tan")
    /// Hex color `008080`.
    public static let teal: Self = .init(raw: "teal")
    /// Hex color `D8BFD8`.
    public static let thistle: Self = .init(raw: "thistle")
    /// Hex color `FF6347`.
    public static let tomato: Self = .init(raw: "tomato")
    /// Hex color `40E0D0`.
    public static let turquoise: Self = .init(raw: "turquoise")
    /// Hex color `EE82EE`.
    public static let violet: Self = .init(raw: "violet")
    /// Hex color `F5DEB3`.
    public static let wheat: Self = .init(raw: "wheat")
    /// Hex color `FFFFFF`.
    public static let white: Self = .init(raw: "white")
    /// Hex color `F5F5F5`.
    public static let whiteSmoke: Self = .init(raw: "whitesmoke")
    /// Hex color `FFFF00`.
    public static let yellow: Self = .init(raw: "yellow")
    /// Hex color `9ACD32`.
    public static let yellowGreen: Self = .init(raw: "yellowgreen")
}
