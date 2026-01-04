//
//  WritingMode.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WritingModeValue: String {
    /// Let the content flow horizontally from left to right, vertically from top to bottom
    case horizontalTb = "horizontal-tb"
    /// Let the content flow vertically from top to bottom, horizontally from right to left
    case verticalRl = "vertical-rl"
    /// Let the content flow vertically from top to bottom, horizontally from left to right
    case verticalLr = "vertical-lr"
}

public struct WritingMode: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "writing-mode" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> WritingMode {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension WritingMode {

    /// Specifies whether lines of text are laid out horizontally or vertically
    public init(_ value: WritingModeValue = .horizontalTb) {
        self.init(value.rawValue)
    }
}
