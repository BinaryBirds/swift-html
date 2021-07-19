//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation


protocol Tag: HTMLRepresentable {
    var node: Node { get }    
}

extension Tag {
    var html: String { node.html }
}
