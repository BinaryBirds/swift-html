//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 12/11/2023.
//

private struct Group: Element {

    var children: [Element]
    
    var node: Node {
        .group(children.compactMap { $0.node })
    }
    
    init(_ children: [Element] = []) {
        self.children = children
    }
}


@resultBuilder
public enum Builder<T> {
    
    public static func buildBlock(_ components: T...) -> [T] {
        components
    }

//    public static func buildBlock(_ components: T) -> [T] {
//        [components]
//    }
    
//    public static func buildBlock(_ components: [T]...) -> [T] {
//        components.flatMap { $0 }
//    }
    
    public static func buildEither(first component: T) -> T {
        component
    }

    public static func buildEither(second component: T) -> T {
        component
    }
}

extension [SwiftSgml.Element]: SwiftSgml.Element {

    public var node: Node {
        .group(map { $0.node })
    }
}

extension Builder where T == Element {

//    public static func buildBlock(_ components: T) -> [T] {
//        [components]
//    }

//    public static func buildExpression(_ expression: [T]) -> T {
//        Group(expression)
//    }
    
//    public static func buildExpression(_ expression: Void) -> T {
//        Group([])
//    }
    
    public static func buildBlock(_ components: T...) -> T {
        Group(components)
    }

    public static func buildOptional(_ component: T?) -> T {
        component ?? Group()
    }

    public static func buildArray(_ components: [T]) -> T {
        Group(components)
    }

    public static func buildBlock(_ components: [T]...) -> [T] {
        components.flatMap { $0 }
    }
    
    public static func buildBlock(_ components: [T]...) -> T {
        Group(components.map { Group($0) })
    }
    
    public static func buildBlock(_ components: [[T]]) -> [T] {
        components.map { Group($0) }
    }
}


