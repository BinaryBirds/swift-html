//
//  Animation.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationValue {

    case values(
        String,
        AnimationDurationValue?,
        AnimationTimingFunctionValue?,
        AnimationDelayValue?,
        AnimationIterationCountValue?,
        AnimationDirectionValue?,
        AnimationFillModeValue?,
        AnimationPlayStateValue?
    )

    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .values(
            let name,
            let duration,
            let timingFunction,
            let delay,
            let iterationCount,
            let direction,
            let fillMode,
            let playState
        ):
            return name
                + [
                    duration?.rawValue,
                    timingFunction?.rawValue,
                    delay?.rawValue,
                    iterationCount?.rawValue,
                    direction?.rawValue,
                    fillMode?.rawValue,
                    playState?.rawValue,
                ]
                .compactMap { $0 }.joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Animation(_ value: String) -> Property {
    Property(name: "animation", value: value)
}

/// A shorthand property for all the animation-* properties
public func Animation(_ value: AnimationValue) -> Property {
    Animation(value.rawValue)
}

/// A shorthand property for all the animation-* properties
public func Animation(
    _ name: String,
    duration: AnimationDurationValue? = nil,
    timingFunction: AnimationTimingFunctionValue? = nil,
    delay: AnimationDelayValue? = nil,
    iterationCount: AnimationIterationCountValue? = nil,
    direction: AnimationDirectionValue? = nil,
    fillMode: AnimationFillModeValue? = nil,
    playState: AnimationPlayStateValue?
) -> Property {
    Animation(
        .values(
            name,
            duration,
            timingFunction,
            delay,
            iterationCount,
            direction,
            fillMode,
            playState
        )
    )
}
