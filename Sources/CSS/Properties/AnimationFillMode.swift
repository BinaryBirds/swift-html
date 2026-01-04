//
//  AnimationFillMode.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationFillModeValue: String {
    /// Default value. Animation will not apply any styles to the element before or after it is executing
    case none
    /// The element will retain the style values that is set by the last keyframe (depends on animation-direction and animation-iteration-count)
    case forwards
    /// The element will get the style values that is set by the first keyframe (depends on animation-direction), and retain this during the animation-delay period
    case backwards
    /// The animation will follow the rules for both forwards and backwards, extending the animation properties in both directions
    case both
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct AnimationFillMode: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation-fill-mode" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AnimationFillMode {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AnimationFillMode {

    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public init(_ value: AnimationFillModeValue = .none) {
        self.init(value.rawValue)
    }
}
