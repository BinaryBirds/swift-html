//
//  Visibility.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum VisibilityValue: String {
    /// Default value. The element is visible
    case visible
    /// The element is hidden (but still takes up space)
    case hidden
    /// Only for table rows (<tr>), row groups (<tbody>), columns (<col>), column groups (<colgroup>).
    /// This value removes a row or column, but it does not affect the table layout.
    /// The space taken up by the row or column will be available for other content.
    /// If collapse is used on other elements, it renders as "hidden"
    case collapse
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Visibility: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "visibility" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Visibility {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Visibility {

    /// Specifies whether or not an element is visible
    public init(_ value: VisibilityValue = .visible) {
        self.init(value.rawValue)
    }
}
