//
//  Optgroup.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<optgroup>` tag is used to group related options in a `<select>` element (drop-down list).
///
/// If you have a long list of options, groups of related options are easier to handle for a user.
open class Optgroup: Tag {

}

extension Optgroup {

    /// Specifies that an option-group should be disabled
    public func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }

    /// Specifies a label for an option-group
    public func label(_ value: String) -> Self {
        attribute("label", value)
    }
}
