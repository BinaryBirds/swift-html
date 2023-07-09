//
//  Progress.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<progress>` tag represents the completion progress of a task.
/// 
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
open class Progress: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}

public extension Progress {
    
    /// Specifies how much work the task requires in total. Default value is 1
    func max(_ value: String) -> Self {
        attribute("max", value)
    }
    
    /// Specifies how much of the task has been completed
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
