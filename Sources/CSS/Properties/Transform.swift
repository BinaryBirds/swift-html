public struct Transform: Property {
    public enum Value: Sendable {
        /// Defines that there should be no transformation    Play it »
        case none
        /// Defines a 2D transformation, using a matrix of six values    Play it »
        case matrix(Double, Double, Double, Double, Double, Double)
        /// Defines a 3D transformation, using a 4x4 matrix of 16 values
        case matrix3d(
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double,
            Double
        )
        /// Defines a 2D translation    Play it »
        case translate(Double, Double)
        ///  Defines a 3D translation
        case translate3d(Double, Double, Double)
        /// Defines a translation, using only the value for the X-axis    Play it »
        case translateX(Double)
        /// Defines a translation, using only the value for the Y-axis    Play it »
        case translateY(Double)
        /// Defines a 3D translation, using only the value for the Z-axis
        case translateZ(Double)
        /// Defines a 2D scale transformation    Play it »
        case scale(Double, Double)
        /// Defines a 3D scale transformation
        case scale3d(Double, Double, Double)
        /// Defines a scale transformation by giving a value for the X-axis    Play it »
        case scaleX(Double)
        /// Defines a scale transformation by giving a value for the Y-axis    Play it »
        case scaleY(Double)
        /// Defines a 3D scale transformation by giving a value for the Z-axis
        case scaleZ(Double)
        /// Defines a 2D rotation, the angle is specified in the parameter    Play it »
        case rotate(Double)
        /// Defines a 3D rotation
        case rotate3d(Double, Double, Double, Double)
        /// Defines a 3D rotation along the X-axis    Play it »
        case rotateX(Double)
        /// Defines a 3D rotation along the Y-axis    Play it »
        case rotateY(Double)
        /// Defines a 3D rotation along the Z-axis    Play it »
        case rotateZ(Double)
        /// Defines a 2D skew transformation along the X- and the Y-axis    Play it »
        case skew(Double, Double)
        /// Defines a 2D skew transformation along the X-axis    Play it »
        case skewX(Double)
        /// Defines a 2D skew transformation along the Y-axis    Play it »
        case skewY(Double)
        /// Defines a perspective view for a 3D transformed element
        case perspective(Double)
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .matrix(let m1, let m2, let m3, let m4, let m5, let m6):
                return "matrix("
                    + [m1, m2, m3, m4, m5, m6].map { String($0) }
                    .joined(separator: ",") + ")"
            case .matrix3d(
                let m1,
                let m2,
                let m3,
                let m4,
                let m5,
                let m6,
                let m7,
                let m8,
                let m9,
                let m10,
                let m11,
                let m12,
                let m13,
                let m14,
                let m15,
                let m16
            ):
                return "matrix3d("
                    + [
                        m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13,
                        m14,
                        m15, m16,
                    ]
                    .map { String($0) }.joined(separator: ",") + ")"
            case .translate(let x, let y):
                return "translate("
                    + [x, y].map { String($0) }.joined(separator: ",") + ")"
            case .translate3d(let x, let y, let z):
                return "translate3d("
                    + [x, y, z].map { String($0) }.joined(separator: ",") + ")"
            case .translateX(let value):
                return "translateX(\(value))"
            case .translateY(let value):
                return "translateY(\(value))"
            case .translateZ(let value):
                return "translateZ(\(value))"
            case .scale(let x, let y):
                return "scale("
                    + [x, y].map { String($0) }.joined(separator: ",")
                    + ")"
            case .scale3d(let x, let y, let z):
                return "scale3d("
                    + [x, y, z].map { String($0) }.joined(separator: ",") + ")"
            case .scaleX(let value):
                return "scaleX(\(value))"
            case .scaleY(let value):
                return "scaleY(\(value))"
            case .scaleZ(let value):
                return "scaleZ(\(value))"
            case .rotate(let x):
                return "rotate(\(x)deg)"
            case .rotate3d(let x, let y, let z, let a):
                return "rotate3d("
                    + [x, y, z, a].map { String($0) }.joined(separator: ",")
                    + "deg)"
            case .rotateX(let value):
                return "rotateX(\(value)deg)"
            case .rotateY(let value):
                return "rotateY(\(value)deg)"
            case .rotateZ(let value):
                return "rotateZ(\(value)deg)"
            case .skew(let x, let y):
                return "skew("
                    + [x, y].map { String($0) + "deg" }.joined(separator: ",")
                    + ")"
            case .skewX(let value):
                return "skewX(\(value)deg)"
            case .skewY(let value):
                return "skewY(\(value)deg)"
            case .perspective(let value):
                return "perspective(\(value))"
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Applies a 2D or 3D transformation to an element
    public init(
        _ value: Value
    ) {
        self.name = "transform"
        self.value = value.rawValue
        self.isImportant = false
    }
}
