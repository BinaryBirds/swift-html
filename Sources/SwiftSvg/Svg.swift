//
//  Svg.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

public final class Svg: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "svg"), children: builder())
    }
}

public extension Svg {

    func width(_ value: Int) -> Self {
        node.upsert(Attribute(key: "width", value: String(value)))
        return self
    }
    
    func height(_ value: Int) -> Self {
        node.upsert(Attribute(key: "height", value: String(value)))
        return self
    }
    
    func viewBox(minX: Int, minY: Int, width: Int, height: Int) -> Self {
        let value = [minX, minY, width, height].map(String.init).joined(separator: " ")
        node.upsert(Attribute(key: "viewBox", value: value))
        return self
    }
    
    func fill(_ value: String) -> Self {
        node.upsert(Attribute(key: "fill", value: value))
        return self
    }
    
    func stroke(_ value: String) -> Self {
        node.upsert(Attribute(key: "stroke", value: value))
        return self
    }
    
    func strokeWidth(_ value: Int) -> Self {
        node.upsert(Attribute(key: "stroke-width", value: String(value)))
        return self
    }
    
    func strokeLinecap(_ value: String) -> Self {
        node.upsert(Attribute(key: "stroke-linecap", value: value))
        return self
    }
    
    func strokeLinejoin(_ value: String) -> Self {
        node.upsert(Attribute(key: "stroke-linejoin", value: value))
        return self
    }
}
