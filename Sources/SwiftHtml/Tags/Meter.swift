//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func meter(_ contents: String) -> Node {
        Node(type: .standard, name: "meter", contents: contents)
    }
}

/// The <meter> tag defines a scalar measurement within a known range, or a fractional value. This is also known as a gauge.
/// 
/// Examples: Disk usage, the relevance of a query result, etc.
/// 
/// Note: The <meter> tag should not be used to indicate progress (as in a progress bar). For progress bars, use the <progress> tag.
/// 
/// Tip: Always add the <label> tag for best accessibility practices!
public struct Meter: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(value: Int, _ contents: String) {
        self.node = .meter(contents)
        self.node.attributes.append(Attribute(key: "value", value: String(value)))
    }
    
    /// Specifies which form the <meter> element belongs to
    public func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
    
    /// Specifies the range that is considered to be a high value
    public func high(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "high", value: String(value))))
    }
    
    /// Specifies the range that is considered to be a low value
    public func low(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "low", value: String(value))))
    }
    
    /// Specifies the maximum value of the range
    public func max(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "max", value: String(value))))
    }
    
    /// Specifies the minimum value of the range. Default value is 0
    public func min(_ value: Int = 0) -> Self {
        .init(node.addOrReplace(Attribute(key: "min", value: String(value))))
    }
    
    /// Specifies what value is the optimal value for the gauge
    public func optimum(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "optimum", value: String(value))))
    }
    
    /// Required. Specifies the current value of the gauge
    public func value(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: String(value))))
    }
}
