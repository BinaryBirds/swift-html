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

}

extension Progress {

    /// Specifies how much work the task requires in total. Default value is 1
    public func max(_ value: String) -> Self {
        attribute("max", value)
    }

    /// Specifies how much of the task has been completed
    public func value(_ value: String) -> Self {
        attribute("value", value)
    }
}
