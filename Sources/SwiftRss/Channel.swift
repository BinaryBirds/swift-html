//
//  Channel.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public class Channel: StandardTag {
    
    override open class var name: String { .init(describing: Channel.self).lowercased() }
}
