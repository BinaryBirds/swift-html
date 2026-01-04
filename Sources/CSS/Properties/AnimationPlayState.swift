//
//  AnimationPlayState.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationPlayStateValue: String {
    /// Specifies that the animation is paused
    case paused
    /// Default value. Specifies that the animation is running
    case running
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct AnimationPlayState: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-play-state" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationPlayState {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationPlayState {

    /// Specifies whether the animation is running or paused
    public init(_ value: AnimationPlayStateValue = .running) {
        self.init(value.rawValue)
    }
}
