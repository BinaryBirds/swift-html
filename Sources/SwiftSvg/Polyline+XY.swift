//
//  Polyline+XY.swift
//  
//
//  Created by Aaron Ge on 2022/4/8.
//
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline


extension Polyline{
    public convenience init(x: [Double], y:[Double], pathLength: Double? = nil) {
        //        super.init()
        self.init([0,0])
        
        guard x.count == y.count
        else{
            return
        }
        
        setAttributes(
            [
                .init(key: "points",
                      value: zip(x, y)
                    .map{
                        "\($0.0.preciseString), \($0.1.preciseString)"
                    }
                    .joined(separator: "\n")
                     )
            ]
            
        )
        
        attribute("pathLength", pathLength?.preciseString)
        
        
        
    }
}
