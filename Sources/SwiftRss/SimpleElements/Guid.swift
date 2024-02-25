//
//  Guid.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

protocol GuidAttribute: Attribute {}

extension IsPermalink: GuidAttribute {}

struct Guid: SimpleElement, Mutable {

    var value: String
    var attributes: [GuidAttribute]

    public var node: Node {
        .standard(
            .init(name: name, attributes: attributes),
            [.text(.init(value: value))]
        )
    }

    init(
        _ value: String,
        @Builder<GuidAttribute> attributes b2: () -> [GuidAttribute] = { [] }
    ) {
        self.value = value
        self.attributes = b2()
    }

    // MARK: -

    func add(attribute: GuidAttribute) -> Self {
        mutate { $0.attributes.append(attribute) }
    }

    func removeAttributes() -> Self {
        mutate { $0.attributes.removeAll() }
    }
}
