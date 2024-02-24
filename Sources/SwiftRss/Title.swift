//
//  Title.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

struct Title: ParentElement {

    var children: [Element]

    init(_ value: String) {
        self.children = [
            CDATA(value)
        ]
        self.attributes = []
    }

}
