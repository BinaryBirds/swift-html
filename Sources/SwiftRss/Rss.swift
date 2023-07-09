//
//  Rss.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

// https://validator.w3.org/feed/docs/rss2.html#ltttlgtSubelementOfLtchannelgt
open class Rss: Tag {
    
    public init(@TagBuilder _ builder: () -> Tag) {
        super.init(node: .init(Rss.self), [builder()])
        setAttributes([
            .init(key: "version", value: "2.0"),
//            .init(key: "xmlns:atom", value: "http://www.w3.org/2005/Atom"),
        ])
    }
}
