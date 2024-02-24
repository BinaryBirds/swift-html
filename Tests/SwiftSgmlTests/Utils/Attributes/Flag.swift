//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

public struct Flag: Attribute {

    public let key: String
    public var value: String? {
        get { nil }
        set {}
    }

    public init(_ key: String) {
        self.key = key
    }
}
