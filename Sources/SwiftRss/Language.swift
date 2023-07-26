//
//  Language.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Language: StandardTag {

    override open class var name: String { .init(describing: Language.self).lowercased() }
}
