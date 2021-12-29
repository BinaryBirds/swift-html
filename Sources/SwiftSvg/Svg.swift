//
//  Svg.swift
//  SwiftSvg
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//

open class Svg: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "svg"), children: builder())
    }
}

public extension Svg {

    func width(_ value: Int) -> Self {
        attribute("width", String(value))
    }
    
    func height(_ value: Int) -> Self {
        attribute("height", String(value))
    }
    
    func viewBox(minX: Int, minY: Int, width: Int, height: Int) -> Self {
        let value = [minX, minY, width, height].map(String.init).joined(separator: " ")
        return attribute("viewBox", value)
    }
    
    func fill(_ value: String) -> Self {
        attribute("fill", value)
    }
    
    func stroke(_ value: String) -> Self {
        attribute("stroke", value)
    }
    
    func strokeWidth(_ value: Int) -> Self {
        attribute("stroke-width", String(value))
    }
    
    func strokeLinecap(_ value: String) -> Self {
        attribute("stroke-linecap", value)
    }
    
    func strokeLinejoin(_ value: String) -> Self {
        attribute("stroke-linejoin", value)
    }
}
