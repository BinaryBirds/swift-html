//
//  TagBuilder.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//


@resultBuilder
public enum TagBuilder {
    
    public static func buildBlock() -> Tag {
        Tag()
    }
    
    public static func buildBlock(_ components: [Tag]...) -> Tag {
        Tag(components.flatMap { $0 })
    }
    
    public static func buildBlock(_ components: Tag...) -> Tag {
        Tag(components)
    }
    
    public static func buildOptional(_ component: Tag?) -> Tag {
        component ?? Tag()
    }
    
    public static func buildEither(first component: Tag) -> Tag {
        component
    }

    public static func buildEither(second component: Tag) -> Tag {
        component
    }
    
    public static func buildArray(_ components: [Tag]) -> Tag {
        Tag(components)
    }
}
