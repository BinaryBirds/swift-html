//
//  TagBuilder.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//


@resultBuilder
public enum TagBuilder {
    
    public static func buildBlock() -> TagRepresentable {
        GroupTag()
    }
    
    public static func buildBlock(_ components: [TagRepresentable]...) -> TagRepresentable {
        GroupTag(components.flatMap { $0 })
    }
    
    public static func buildBlock(_ components: TagRepresentable...) -> TagRepresentable {
        GroupTag(components)
    }
    
    public static func buildOptional(_ component: TagRepresentable?) -> TagRepresentable {
        component ?? GroupTag()
    }
    
    public static func buildEither(first component: TagRepresentable) -> TagRepresentable {
        component
    }

    public static func buildEither(second component: TagRepresentable) -> TagRepresentable {
        component
    }
    
    public static func buildArray(_ components: [TagRepresentable]) -> TagRepresentable {
        GroupTag(components)
    }
}
