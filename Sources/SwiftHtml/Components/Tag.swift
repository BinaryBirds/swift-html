//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation


public protocol NodeRepresentable {
    var node: Node { get }
    init(_ node: Node)
}


public protocol Tag: NodeRepresentable, HTMLRepresentable {
    
}
