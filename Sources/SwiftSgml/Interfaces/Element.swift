//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol Element: Sendable {

    var name: String { get }
    var node: Node { get }
}

extension Element {

    public var name: String {
        .init(describing: type(of: self)).lowercased()
    }
}

extension [SwiftSgml.Element]: SwiftSgml.Element {

    public var node: Node {
        .group(map { $0.node })
    }
}
