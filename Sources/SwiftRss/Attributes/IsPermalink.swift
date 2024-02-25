//
//  File.swift
//
//
//  Created by Tibor Bodecs on 25/02/2024.
//

import SwiftSgml

struct IsPermalink: Attribute {
    var key: String
    var value: String?

    init(_ value: Bool) {
        self.key = "isPermalink"
        self.value = String(value)
    }
}
