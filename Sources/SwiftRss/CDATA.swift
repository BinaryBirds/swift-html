//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

struct CDATA: Element {

    let value: String

    init(_ value: String) {
        self.value = "<![CDATA[" + value + "]]>"
    }

    var node: Node { .text(.init(value: value)) }
}
