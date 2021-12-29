//
//  Meter.s`wift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<meter>` tag defines a scalar measurement within a known range, or a fractional value. This is also known as a gauge.
/// 
/// Examples: Disk usage, the relevance of a query result, etc.
/// 
/// **Note:** The `<meter>` tag should not be used to indicate progress (as in a progress bar). For progress bars, use the `<progress>` tag.
/// 
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
open class Meter: Tag {

    public init(value: Int, _ contents: String) {
        let node = Node(type: .standard, name: "meter", contents: contents, attributes: [Attribute(key: "value", value: String(value))])
        super.init(node)
    }
}

public extension Meter {
    
    /// Specifies which form the <meter> element belongs to
    func form(_ value: String) -> Self {
        attribute("form", value)
    }
    
    /// Specifies the range that is considered to be a high value
    func high(_ value: Int) -> Self {
        attribute("high", String(value))
    
    }
    
    /// Specifies the range that is considered to be a low value
    func low(_ value: Int) -> Self {
        attribute("low", String(value))
    
    }
    
    /// Specifies the maximum value of the range
    func max(_ value: Int) -> Self {
        attribute("max", String(value))
    
    }
    
    /// Specifies the minimum value of the range. Default value is 0
    func min(_ value: Int = 0) -> Self {
        attribute("min", String(value))
    }
    
    /// Specifies what value is the optimal value for the gauge
    func optimum(_ value: Int) -> Self {
        attribute("optimum", String(value))
    }
    
    /// Required. Specifies the current value of the gauge
    func value(_ value: Int) -> Self {
        attribute("value", String(value))
    }
}
