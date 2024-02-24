//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 12/11/2023.
//

@resultBuilder
public enum Builder<T> {
    
    public static func buildBlock(_ components: T...) -> [T] {
        components
    }
    
    public static func buildEither(first component: T) -> T {
        component
    }

    public static func buildEither(second component: T) -> T {
        component
    }
}

private struct Hidden: Element {

    var node: Node? { nil }
    var children: [any Element]
    
    init(children: [any Element] = []) {
        self.children = children
    }
}

extension Builder where T == Element {

    public static func buildBlock(_ components: [Element]...) -> Element {
        Hidden(children: components.flatMap { $0 })
    }
    
    public static func buildBlock(_ components: Element...) -> Element {
        Hidden(children: components)
    }
    
    public static func buildOptional(_ component: Element?) -> Element {
        component ?? Hidden()
    }

    public static func buildArray(_ components: [Element]) -> Element {
        Hidden(children: components)
    }
    
}
