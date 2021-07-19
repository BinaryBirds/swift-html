//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

@resultBuilder
enum TagBuilder {
    static func buildBlock(_ components: Tag...) -> [Tag] {
        components
    }
}

