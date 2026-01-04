//
//  StylesheetRenderer.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 11. 21..
//

public struct StylesheetRenderer {

    public let minify: Bool
    public let indent: Int

    private let newline: String
    private let singleSpace: String

    public init(
        minify: Bool = false,
        indent: Int = 4
    ) {
        self.minify = minify
        self.indent = minify ? 0 : indent
        self.newline = minify ? "" : "\n"
        self.singleSpace = minify ? "" : " "
    }

    public func render(_ stylesheet: Stylesheet) -> String {
        stylesheet.rules
            .map { rule in
                switch rule {
                case let charset as Charset:
                    return #"@charset ""# + charset.name + #"";"#
                case let value as FontFace:
                    let properties = value.properties.map { renderProperty($0) }
                        .joined(separator: newline)
                    return "@font-face {" + newline + properties + newline + "}"
                case let value as Import:
                    return "@import " + value.name + ";"
                case let keyframes as Keyframes:
                    let selectors = keyframes.selectors
                        .map { renderSelector($0) }.joined(separator: newline)
                    return "@keyframes " + keyframes.name + singleSpace + "{"
                        + newline + selectors + newline + "}" + newline
                case let media as Media:
                    let level = media.query != nil ? 1 : 0
                    var selectors = media.selectors
                        .map { renderSelector($0, level: level) }
                        .joined(separator: newline)
                    if let query = media.query {
                        selectors =
                            "@media " + query + singleSpace + "{" + newline
                            + selectors + newline + "}"
                    }
                    return selectors
                default:
                    fatalError("unknown rule object")
                }
            }
            .joined(separator: newline)
    }

    // MARK: - helpers

    private func renderProperty(
        _ property: any Property,
        level: Int = 0
    ) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        return spaces + property.name + ":" + singleSpace + property.value
            + (property.isImportant ? " !important" : "")
    }

    private func renderSelector(_ selector: Selector, level: Int = 0) -> String
    {
        let spaces = String(repeating: " ", count: level * indent)
        var suffix = ""
        if let pseudo = selector.pseudo {
            suffix = pseudo
        }
        let properties =
            selector.properties.map { renderProperty($0, level: level + 1) }
            .joined(separator: ";" + newline) + (!minify ? ";" : "")
        return spaces + selector.name + suffix + singleSpace + "{" + newline
            + properties + newline + spaces + "}"
    }
}
