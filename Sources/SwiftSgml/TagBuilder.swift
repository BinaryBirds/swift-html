//
//  TagBuilder.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

@resultBuilder
public enum TagBuilder {
    
    public static func buildBlock(_ components: [Tag]...) -> Tag {
        GroupTag(components.flatMap { $0 })
    }
    
    public static func buildBlock(_ components: Tag...) -> Tag {
        GroupTag(components)
    }
    
    public static func buildOptional(_ component: Tag?) -> Tag {
        component ?? GroupTag()
    }
    
    public static func buildEither(first component: Tag) -> Tag {
        component
    }

    public static func buildEither(second component: Tag) -> Tag {
        component
    }
    
    public static func buildArray(_ components: [Tag]) -> Tag {
        GroupTag(components)
    }
}

//@resultBuilder
//public enum TagBuilder {
//
//    public static func buildBlock(_ components: [Tag]...) -> [Tag] {
//        components.flatMap { $0 }
//    }
//
//    public static func buildBlock(_ components: [Tag]...) -> Tag {
//        let flat = components.flatMap { $0 }
//        if flat.count < 2, let first = flat.first {
//            return first
//        }
//        return GroupTag(flat)
//    }
//
//    public static func buildExpression(_ expression: [Tag]) -> [Tag] {
//        expression
//    }
//
//    public static func buildExpression(_ expression: Tag) -> [Tag] {
//        [expression]
//    }
//
//    public static func buildEither(first component: [Tag]) -> [Tag] {
//        component
//    }
//
//    public static func buildEither(second component: [Tag]) -> [Tag] {
//        component
//    }
//
//    public static func buildOptional(_ component: [Tag]?) -> [Tag] {
//        component ?? []
//    }
//
//    public static func buildArray(_ components: [[Tag]]) -> [Tag] {
//        components.flatMap { $0 }
//    }
//}

