//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//


public final class Circle: Tag {

    public init(cx: Int, cy: Int, r: Int) {
        super.init(Node(type: .standard, name: "circle", attributes: [
            .init(key: "cx", value: String(cx)),
            .init(key: "cy", value: String(cy)),
            .init(key: "r", value: String(r)),
        ]))
        
    }
}
