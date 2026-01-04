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

public struct Animation: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "animation" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Animation {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Animation {

    /// A shorthand property for all the animation-* properties
    public init(_ value: AnimationValue) {
        self.init(value.rawValue)
    }

    /// A shorthand property for all the animation-* properties
    public init(
        _ name: String,
        duration: AnimationDurationValue? = nil,
        timingFunction: AnimationTimingFunctionValue? = nil,
        delay: AnimationDelayValue? = nil,
        iterationCount: AnimationIterationCountValue? = nil,
        direction: AnimationDirectionValue? = nil,
        fillMode: AnimationFillModeValue? = nil,
        playState: AnimationPlayStateValue?
    ) {
        self.init(
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
}
