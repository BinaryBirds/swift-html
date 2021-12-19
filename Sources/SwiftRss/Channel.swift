//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public class Channel: Tag {
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "channel"), children: builder())
    }
}
