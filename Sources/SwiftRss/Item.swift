//
//  Item.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//


public class Item: StandardTag {
    
    override open class var name: String { .init(describing: Item.self).lowercased() }
}
