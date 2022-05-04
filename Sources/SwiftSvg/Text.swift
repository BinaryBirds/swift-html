//
//  Text.swift
//  
//
//  Created by Aaron Ge on 2022/4/8.
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/Text
open class Text: Tag{
        
    
}
    
extension Text{
    
    ///    The x coordinate of the starting point of the text baseline.
    func x(_ value: Double=0) -> Self {
        attribute("x", value.preciseString)
    }
    
    ///    The y coordinate of the starting point of the text baseline.
    func y(_ value: Double=0) -> Self {
        attribute("y", value.preciseString)
    }
    
}


//open class Line: Tag {
//
//    public init(x1: Double,
//                y1: Double,
//                x2: Double,
//                y2: Double,
//                pathLength: Double? = nil) {
//        super.init()
//        setAttributes([
//            .init(key: "x1", value: x1.preciseString),
//            .init(key: "y1", value: y1.preciseString),
//            .init(key: "x2", value: x2.preciseString),
//            .init(key: "y2", value: y2.preciseString),
//        ])
//        attribute("pathLength", pathLength?.preciseString)
//    }
//}
