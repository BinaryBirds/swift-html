//
//  File.swift
//
//
//  Created by Tibor Bodecs on 25/02/2024.
//

public protocol CDATAElement: SimpleElement {

    var cdataValue: String { get }
}

extension CDATAElement {

    public var cdataValue: String { "<![CDATA[" + value + "]]>" }

    public var node: Node {
        .standard(.init(name: name), [.text(.init(value: cdataValue))])
    }
}

extension CDATAElement where Self: Attributes {

    public var node: Node {
        .standard(
            .init(name: name, attributes: attributes),
            [.text(.init(value: cdataValue))]
        )
    }
}

public protocol MutableCDATAElement: CDATAElement, Mutable {

    func set(value: String) -> Self
}

extension MutableCDATAElement {

    public mutating func set(value: String) {
        self.value = value
    }

    public func set(value: String) -> Self {
        mutate { $0.set(value: value) }
    }
}
