//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

@resultBuilder
public enum TagBuilder {
    
    public static func buildBlock(_ components: Tag...) -> [Tag] {
        components
    }
}

