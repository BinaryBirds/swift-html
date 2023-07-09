//
//  Canvas.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<canvas>` tag is used to draw graphics, on the fly, via scripting (usually JavaScript).
/// 
/// The `<canvas>` tag is transparent, and is only a container for graphics, you must use a script to actually draw the graphics.
/// 
/// Any text inside the `<canvas>` element will be displayed in browsers with JavaScript disabled and in browsers that do not support <canvas>.
open class Canvas: StandardTag {
    
    override open class var `class`: AnyClass { Canvas.self }
}

public extension Canvas {

    /// Specifies the height of the canvas. Default value is 150
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies the width of the canvas Default value is 300
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}
