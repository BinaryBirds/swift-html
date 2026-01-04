public struct Filter: Property {
    public enum Value: Sendable {
        /// Default value. Specifies no effects
        case none
        /// Applies a blur effect to the image. A larger value will create more blur.
        /// If no value is specified, 0 is used.
        case blur(Double)
        /// Adjusts the brightness of the image.
        /// 0% will make the image completely black.
        /// 100% (1) is default and represents the original image.
        /// Values over 100% will provide brighter results.
        case brightness(Double)
        /// Adjusts the contrast of the image.
        /// 0% will make the image completely black.
        /// 100% (1) is default, and represents the original image.
        /// Values over 100% will provide results with more contrast.
        case contrast(Double)
        /// Applies a drop shadow effect to the image.
        /// Possible values:
        /// h-shadow - Required. Specifies a pixel value for the horizontal shadow. Negative values place the shadow to the left of the image.
        /// v-shadow - Required. Specifies a pixel value for the vertical shadow. Negative values place the shadow above the image.
        /// blur - Optional. This is the third value, and must be in pixels.
        ///     Adds a blur effect to the shadow.
        ///     A larger value will create more blur (the shadow becomes bigger and lighter).
        ///     Negative values are not allowed.
        ///     If no value is specified, 0 is used (the shadow's edge is sharp).
        /// spread - Optional. This is the fourth value, and must be in pixels.
        ///     Positive values will cause the shadow to expand and grow bigger, and negative values will cause the shadow to shrink.
        ///     If not specified, it will be 0 (the shadow will be the same size as the element).
        ///     Note: Chrome, Safari and Opera, and maybe other browsers, do not support this 4th length; it will not render if added.
        /// color - Optional. Adds a color to the shadow. If not specified, the color depends on the browser (often black).
        /// An example of creating a red shadow, which is 8px big both horizontally and vertically, with a blur effect of 10px:
        /// filter: drop-shadow(8px 8px 10px red);
        /// Tip: This filter is similar to the box-shadow property.
        // @TODO: add drop shadow support
        //    case drop-shadow(h-shadow v-shadow blur spread color)
        /// Converts the image to grayscale.
        /// 0% (0) is default and represents the original image.
        /// 100% will make the image completely gray (used for black and white images).
        /// Note: Negative values are not allowed.
        case grayscale(Double)
        /// Applies a hue rotation on the image. The value defines the number of degrees around the color circle the image samples will be adjusted. 0deg is default, and represents the original image.
        /// Note: Maximum value is 360deg.
        case hueRotate(Double)
        /// Inverts the samples in the image.
        /// 0% (0) is default and represents the original image.
        /// 100% will make the image completely inverted.
        /// Note: Negative values are not allowed.
        case invert(Double)
        /// Sets the opacity level for the image. The opacity-level describes the transparency-level, where:
        /// 0% is completely transparent.
        /// 100% (1) is default and represents the original image (no transparency).
        /// Note: Negative values are not allowed.
        /// Tip: This filter is similar to the opacity property.
        case opacity(Double)
        /// Saturates the image.
        /// 0% (0) will make the image completely un-saturated.
        /// 100% is default and represents the original image.
        /// Values over 100% provides super-saturated results.
        /// Note: Negative values are not allowed.
        case saturate(Double)
        /// Converts the image to sepia.
        /// 0% (0) is default and represents the original image.
        /// 100% will make the image completely sepia.
        /// Note: Negative values are not allowed.
        case sepia(Double)
        /// The url() function takes the location of an XML file that specifies an SVG filter, and may include an anchor to a specific filter element.
        /// Example:
        /// filter: url(svg-url#element-id)
        case url(String)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .blur(let value):
                return "blur(\(value)px)"
            case .brightness(let value):
                return "brightness(\(value)%)"
            case .contrast(let value):
                return "contrast(\(value)%)"
            case .grayscale(let value):
                return "grayscale(\(value)%)"
            case .hueRotate(let value):
                return "hue-rotate(\(value)deg)"
            case .invert(let value):
                return "invert(\(value)%)"
            case .opacity(let value):
                return "opacity(\(value)%)"
            case .saturate(let value):
                return "saturate(\(value)%)"
            case .sepia(let value):
                return "sepia(\(value)%)"
            case .url(let value):
                return "url(\(value))"
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

    /// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    public init(
        _ value: Value = .none
    ) {
        self.name = "filter"
        self.value = value.rawValue
        self.isImportant = false
    }

    // @TODO: add multiple filter support
}
