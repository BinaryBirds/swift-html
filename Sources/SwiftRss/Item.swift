//
//  Item.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//


public class Item: Tag {
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "item"), children: builder())
    }
}
