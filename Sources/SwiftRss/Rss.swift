//
//  Rss.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

// https://validator.w3.org/feed/docs/rss2.html#ltttlgtSubelementOfLtchannelgt
public final class Rss: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "rss", attributes: [
            .init(key: "version", value: "2.0"),
//            .init(key: "xmlns:atom", value: "http://www.w3.org/2005/Atom"),
        ]), children: builder())
    }
}
