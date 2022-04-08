//
//  Svg+Text.swift
//  
//
//  Created by Aaron Ge on 2022/4/8.
//

extension Svg{
    open class Text: Tag{
        
    }
    
}

extension Svg.Text{
    func x(_ value: Int) -> Self{
        attribute("x", String(value))
    }
    
    func y(_ value: Int) -> Self{
        attribute("y", String(value))
    }
}
