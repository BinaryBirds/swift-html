//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import Foundation

public struct Document {

    public enum `Type` {
        case unspecified
        case html
        case xml
        case custom(String)
    }

    public let type: `Type`
    public let root: Element

    public init(
        _ type: `Type` = .unspecified,
        _ rootElementBuilder: () -> Element
    ) {
        self.type = type
        self.root = rootElementBuilder()
    }

    public init(
        type: `Type` = .unspecified,
        root: Element
    ) {
        self.type = type
        self.root = root
    }
}
