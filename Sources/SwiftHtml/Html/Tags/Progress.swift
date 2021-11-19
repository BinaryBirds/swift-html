//
//  Progress.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func progress(_ contents: String) -> Node {
        Node(type: .standard, name: "progress", contents: contents)
    }
}

/// The `<progress>` tag represents the completion progress of a task.
/// 
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
public struct Progress: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .progress(contents)
    }
}

public extension Progress {
    /// Specifies how much work the task requires in total. Default value is 1
    func max(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "max", value: value)))
    }
    
    /// Specifies how much of the task has been completed
    func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
